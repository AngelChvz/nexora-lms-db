-- ============================================================
-- Nexora LMS - Esquema SQL Server
-- ============================================================

CREATE TABLE usuario (
    id              BIGINT IDENTITY(1,1) NOT NULL,
    nombres         NVARCHAR(100) NOT NULL,
    apellidos       NVARCHAR(100) NOT NULL,
    correo          NVARCHAR(150) NOT NULL,
    password_hash   NVARCHAR(100) NOT NULL,
    rol             NVARCHAR(20)  NOT NULL,
    estado          NVARCHAR(20)  NOT NULL,
    telefono        NVARCHAR(30)  NULL,
    cargo           NVARCHAR(120) NULL,
    creado_en       DATETIME2     NOT NULL CONSTRAINT df_usuario_creado DEFAULT SYSDATETIME(),
    actualizado_en  DATETIME2     NULL,
    CONSTRAINT pk_usuario PRIMARY KEY (id),
    CONSTRAINT uq_usuario_correo UNIQUE (correo)
);
CREATE INDEX ix_usuario_rol ON usuario (rol);
CREATE INDEX ix_usuario_estado ON usuario (estado);

CREATE TABLE categoria (
    id              BIGINT IDENTITY(1,1) NOT NULL,
    nombre          NVARCHAR(120) NOT NULL,
    descripcion     NVARCHAR(400) NULL,
    estado          NVARCHAR(20)  NOT NULL,
    creado_en       DATETIME2     NOT NULL CONSTRAINT df_categoria_creado DEFAULT SYSDATETIME(),
    actualizado_en  DATETIME2     NULL,
    CONSTRAINT pk_categoria PRIMARY KEY (id),
    CONSTRAINT uq_categoria_nombre UNIQUE (nombre)
);

CREATE TABLE curso (
    id              BIGINT IDENTITY(1,1) NOT NULL,
    codigo          NVARCHAR(30)  NOT NULL,
    nombre          NVARCHAR(180) NOT NULL,
    descripcion     NVARCHAR(1000) NULL,
    categoria_id    BIGINT        NOT NULL,
    docente_id      BIGINT        NOT NULL,
    estado          NVARCHAR(20)  NOT NULL,
    horas           INT           NULL,
    cupo            INT           NULL,
    portada_url     NVARCHAR(500) NULL,
    creado_en       DATETIME2     NOT NULL CONSTRAINT df_curso_creado DEFAULT SYSDATETIME(),
    actualizado_en  DATETIME2     NULL,
    CONSTRAINT pk_curso PRIMARY KEY (id),
    CONSTRAINT uq_curso_codigo UNIQUE (codigo),
    CONSTRAINT fk_curso_categoria FOREIGN KEY (categoria_id) REFERENCES categoria (id),
    CONSTRAINT fk_curso_docente FOREIGN KEY (docente_id) REFERENCES usuario (id)
);
CREATE INDEX ix_curso_docente ON curso (docente_id);
CREATE INDEX ix_curso_categoria ON curso (categoria_id);
CREATE INDEX ix_curso_estado ON curso (estado);

CREATE TABLE inscripcion (
    id              BIGINT IDENTITY(1,1) NOT NULL,
    curso_id        BIGINT        NOT NULL,
    estudiante_id   BIGINT        NOT NULL,
    fecha           DATE          NOT NULL,
    estado          NVARCHAR(20)  NOT NULL,
    creado_en       DATETIME2     NOT NULL CONSTRAINT df_inscripcion_creado DEFAULT SYSDATETIME(),
    actualizado_en  DATETIME2     NULL,
    CONSTRAINT pk_inscripcion PRIMARY KEY (id),
    CONSTRAINT uq_inscripcion_curso_estudiante UNIQUE (curso_id, estudiante_id),
    CONSTRAINT fk_inscripcion_curso FOREIGN KEY (curso_id) REFERENCES curso (id) ON DELETE CASCADE,
    CONSTRAINT fk_inscripcion_estudiante FOREIGN KEY (estudiante_id) REFERENCES usuario (id)
);
CREATE INDEX ix_inscripcion_estudiante ON inscripcion (estudiante_id);

CREATE TABLE unidad (
    id              BIGINT IDENTITY(1,1) NOT NULL,
    curso_id        BIGINT        NOT NULL,
    titulo          NVARCHAR(180) NOT NULL,
    descripcion     NVARCHAR(500) NULL,
    orden           INT           NOT NULL,
    creado_en       DATETIME2     NOT NULL CONSTRAINT df_unidad_creado DEFAULT SYSDATETIME(),
    actualizado_en  DATETIME2     NULL,
    CONSTRAINT pk_unidad PRIMARY KEY (id),
    CONSTRAINT uq_unidad_curso_orden UNIQUE (curso_id, orden),
    CONSTRAINT fk_unidad_curso FOREIGN KEY (curso_id) REFERENCES curso (id) ON DELETE CASCADE
);

CREATE TABLE leccion (
    id              BIGINT IDENTITY(1,1) NOT NULL,
    unidad_id       BIGINT        NOT NULL,
    titulo          NVARCHAR(180) NOT NULL,
    contenido       NVARCHAR(MAX) NULL,
    orden           INT           NOT NULL,
    duracion_min    INT           NULL,
    creado_en       DATETIME2     NOT NULL CONSTRAINT df_leccion_creado DEFAULT SYSDATETIME(),
    actualizado_en  DATETIME2     NULL,
    CONSTRAINT pk_leccion PRIMARY KEY (id),
    CONSTRAINT uq_leccion_unidad_orden UNIQUE (unidad_id, orden),
    CONSTRAINT fk_leccion_unidad FOREIGN KEY (unidad_id) REFERENCES unidad (id) ON DELETE CASCADE
);

CREATE TABLE material (
    id              BIGINT IDENTITY(1,1) NOT NULL,
    leccion_id      BIGINT        NOT NULL,
    nombre          NVARCHAR(180) NOT NULL,
    tipo            NVARCHAR(20)  NOT NULL,
    ruta            NVARCHAR(500) NOT NULL,
    tamanio_kb      BIGINT        NULL,
    subido_por      NVARCHAR(150) NULL,
    creado_en       DATETIME2     NOT NULL CONSTRAINT df_material_creado DEFAULT SYSDATETIME(),
    actualizado_en  DATETIME2     NULL,
    CONSTRAINT pk_material PRIMARY KEY (id),
    CONSTRAINT fk_material_leccion FOREIGN KEY (leccion_id) REFERENCES leccion (id) ON DELETE CASCADE
);
CREATE INDEX ix_material_leccion ON material (leccion_id);

CREATE TABLE actividad (
    id                  BIGINT IDENTITY(1,1) NOT NULL,
    curso_id            BIGINT        NOT NULL,
    unidad_id           BIGINT        NULL,
    titulo              NVARCHAR(180) NOT NULL,
    tipo                NVARCHAR(20)  NOT NULL,
    descripcion         NVARCHAR(1000) NULL,
    instrucciones       NVARCHAR(MAX) NULL,
    fecha_publicacion   DATETIME2     NULL,
    fecha_limite        DATETIME2     NULL,
    puntaje_max         DECIMAL(5,2)  NOT NULL CONSTRAINT df_actividad_puntaje DEFAULT 20,
    estado              NVARCHAR(20)  NOT NULL,
    creado_por          BIGINT        NULL,
    creado_en           DATETIME2     NOT NULL CONSTRAINT df_actividad_creado DEFAULT SYSDATETIME(),
    actualizado_en      DATETIME2     NULL,
    CONSTRAINT pk_actividad PRIMARY KEY (id),
    CONSTRAINT fk_actividad_curso FOREIGN KEY (curso_id) REFERENCES curso (id) ON DELETE CASCADE,
    CONSTRAINT fk_actividad_unidad FOREIGN KEY (unidad_id) REFERENCES unidad (id),
    CONSTRAINT fk_actividad_autor FOREIGN KEY (creado_por) REFERENCES usuario (id)
);
CREATE INDEX ix_actividad_curso ON actividad (curso_id);
CREATE INDEX ix_actividad_estado ON actividad (estado);
CREATE INDEX ix_actividad_unidad ON actividad (unidad_id);

CREATE TABLE pregunta (
    id              BIGINT IDENTITY(1,1) NOT NULL,
    actividad_id    BIGINT        NOT NULL,
    enunciado       NVARCHAR(1000) NOT NULL,
    tipo            NVARCHAR(30)  NOT NULL,
    puntaje         DECIMAL(5,2)  NOT NULL,
    orden           INT           NOT NULL,
    CONSTRAINT pk_pregunta PRIMARY KEY (id),
    CONSTRAINT fk_pregunta_actividad FOREIGN KEY (actividad_id) REFERENCES actividad (id) ON DELETE CASCADE
);
CREATE INDEX ix_pregunta_actividad ON pregunta (actividad_id);

CREATE TABLE opcion (
    id              BIGINT IDENTITY(1,1) NOT NULL,
    pregunta_id     BIGINT        NOT NULL,
    texto           NVARCHAR(500) NOT NULL,
    es_correcta     BIT           NOT NULL CONSTRAINT df_opcion_correcta DEFAULT 0,
    orden           INT           NOT NULL,
    CONSTRAINT pk_opcion PRIMARY KEY (id),
    CONSTRAINT fk_opcion_pregunta FOREIGN KEY (pregunta_id) REFERENCES pregunta (id) ON DELETE CASCADE
);
CREATE INDEX ix_opcion_pregunta ON opcion (pregunta_id);

CREATE TABLE entrega (
    id              BIGINT IDENTITY(1,1) NOT NULL,
    actividad_id    BIGINT        NOT NULL,
    estudiante_id   BIGINT        NOT NULL,
    fecha_entrega   DATETIME2     NOT NULL,
    respuesta_texto NVARCHAR(MAX) NULL,
    archivo_nombre  NVARCHAR(255) NULL,
    archivo_ruta    NVARCHAR(500) NULL,
    estado          NVARCHAR(20)  NOT NULL,
    creado_en       DATETIME2     NOT NULL CONSTRAINT df_entrega_creado DEFAULT SYSDATETIME(),
    actualizado_en  DATETIME2     NULL,
    CONSTRAINT pk_entrega PRIMARY KEY (id),
    CONSTRAINT uq_entrega_actividad_estudiante UNIQUE (actividad_id, estudiante_id),
    CONSTRAINT fk_entrega_actividad FOREIGN KEY (actividad_id) REFERENCES actividad (id) ON DELETE CASCADE,
    CONSTRAINT fk_entrega_estudiante FOREIGN KEY (estudiante_id) REFERENCES usuario (id)
);
CREATE INDEX ix_entrega_estudiante ON entrega (estudiante_id);
CREATE INDEX ix_entrega_estado ON entrega (estado);

CREATE TABLE respuesta (
    id              BIGINT IDENTITY(1,1) NOT NULL,
    entrega_id      BIGINT        NOT NULL,
    pregunta_id     BIGINT        NOT NULL,
    opcion_id       BIGINT        NULL,
    texto_respuesta NVARCHAR(1000) NULL,
    es_correcta     BIT           NOT NULL CONSTRAINT df_respuesta_correcta DEFAULT 0,
    puntaje         DECIMAL(5,2)  NOT NULL CONSTRAINT df_respuesta_puntaje DEFAULT 0,
    CONSTRAINT pk_respuesta PRIMARY KEY (id),
    CONSTRAINT fk_respuesta_entrega FOREIGN KEY (entrega_id) REFERENCES entrega (id) ON DELETE CASCADE,
    CONSTRAINT fk_respuesta_pregunta FOREIGN KEY (pregunta_id) REFERENCES pregunta (id)
);
CREATE INDEX ix_respuesta_entrega ON respuesta (entrega_id);

CREATE TABLE calificacion (
    id              BIGINT IDENTITY(1,1) NOT NULL,
    entrega_id      BIGINT        NOT NULL,
    puntaje         DECIMAL(5,2)  NOT NULL,
    retroalimentacion NVARCHAR(1000) NULL,
    fecha           DATETIME2     NOT NULL,
    calificado_por  BIGINT        NULL,
    creado_en       DATETIME2     NOT NULL CONSTRAINT df_calificacion_creado DEFAULT SYSDATETIME(),
    actualizado_en  DATETIME2     NULL,
    CONSTRAINT pk_calificacion PRIMARY KEY (id),
    CONSTRAINT uq_calificacion_entrega UNIQUE (entrega_id),
    CONSTRAINT fk_calificacion_entrega FOREIGN KEY (entrega_id) REFERENCES entrega (id) ON DELETE CASCADE,
    CONSTRAINT fk_calificacion_docente FOREIGN KEY (calificado_por) REFERENCES usuario (id)
);

CREATE TABLE aviso (
    id                  BIGINT IDENTITY(1,1) NOT NULL,
    curso_id            BIGINT        NOT NULL,
    titulo              NVARCHAR(180) NOT NULL,
    mensaje             NVARCHAR(MAX) NOT NULL,
    tipo                NVARCHAR(20)  NOT NULL,
    estado              NVARCHAR(20)  NOT NULL,
    fecha_publicacion   DATETIME2     NOT NULL,
    autor_id            BIGINT        NULL,
    creado_en           DATETIME2     NOT NULL CONSTRAINT df_aviso_creado DEFAULT SYSDATETIME(),
    actualizado_en      DATETIME2     NULL,
    CONSTRAINT pk_aviso PRIMARY KEY (id),
    CONSTRAINT fk_aviso_curso FOREIGN KEY (curso_id) REFERENCES curso (id) ON DELETE CASCADE,
    CONSTRAINT fk_aviso_autor FOREIGN KEY (autor_id) REFERENCES usuario (id)
);
CREATE INDEX ix_aviso_curso ON aviso (curso_id);
CREATE INDEX ix_aviso_fecha ON aviso (fecha_publicacion);

CREATE TABLE auditoria (
    id              BIGINT IDENTITY(1,1) NOT NULL,
    usuario_id      BIGINT        NULL,
    usuario_nombre  NVARCHAR(150) NULL,
    accion          NVARCHAR(60)  NOT NULL,
    entidad         NVARCHAR(60)  NULL,
    entidad_id      BIGINT        NULL,
    detalle         NVARCHAR(500) NULL,
    ip              NVARCHAR(45)  NULL,
    fecha_hora      DATETIME2     NOT NULL CONSTRAINT df_auditoria_fecha DEFAULT SYSDATETIME(),
    CONSTRAINT pk_auditoria PRIMARY KEY (id),
    CONSTRAINT fk_auditoria_usuario FOREIGN KEY (usuario_id) REFERENCES usuario (id)
);
CREATE INDEX ix_auditoria_fecha ON auditoria (fecha_hora);
CREATE INDEX ix_auditoria_usuario ON auditoria (usuario_id);
