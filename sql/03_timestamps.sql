-- Las entidades Pregunta, Opcion y Respuesta heredan de BaseEntity,
-- que mapea creado_en y actualizado_en. Se agregan estas columnas
-- para mantener el esquema alineado con el modelo JPA.

ALTER TABLE pregunta ADD
    creado_en      DATETIME2 NOT NULL CONSTRAINT df_pregunta_creado DEFAULT SYSDATETIME(),
    actualizado_en DATETIME2 NULL;

ALTER TABLE opcion ADD
    creado_en      DATETIME2 NOT NULL CONSTRAINT df_opcion_creado DEFAULT SYSDATETIME(),
    actualizado_en DATETIME2 NULL;

ALTER TABLE respuesta ADD
    creado_en      DATETIME2 NOT NULL CONSTRAINT df_respuesta_creado DEFAULT SYSDATETIME(),
    actualizado_en DATETIME2 NULL;
