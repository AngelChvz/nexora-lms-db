-- ============================================================
-- Nexora LMS - Datos demo
-- Credenciales:
--   patricia.salcedo@nexora.com / admin2025
--   marco.venegas@nexora.com    / docente2025
--   mateo.salazar@nexora.com    / estudiante2025
-- ============================================================

SET IDENTITY_INSERT usuario ON;
INSERT INTO usuario (id, nombres, apellidos, correo, password_hash, rol, estado, telefono, cargo, creado_en) VALUES
(1, N'Patricia', N'Salcedo Quispe', N'patricia.salcedo@nexora.com', N'$2a$10$V3xMEVwZvvKkwLQrPMFeQeTDjnNm40UnUnn8vSihD3goQtD93kX8G', N'ADMIN', N'ACTIVO', N'+51 987 654 321', N'Jefa de Plataforma Académica', DATEADD(day, -120, SYSDATETIME())),
(2, N'Marco', N'Venegas Barreto', N'marco.venegas@nexora.com', N'$2a$10$BaAt7O/JBOwHI8dexnETXOnAFgVSxal6jl4WtpsOa.HIItpzHkTJm', N'DOCENTE', N'ACTIVO', N'+51 986 112 233', N'Especialista en Ciberseguridad', DATEADD(day, -110, SYSDATETIME())),
(3, N'Lucía', N'Ferrer Campos', N'lucia.ferrer@nexora.com', N'$2a$10$BaAt7O/JBOwHI8dexnETXOnAFgVSxal6jl4WtpsOa.HIItpzHkTJm', N'DOCENTE', N'ACTIVO', N'+51 955 443 221', N'Arquitecta de Soluciones Cloud', DATEADD(day, -100, SYSDATETIME())),
(4, N'Diego', N'Ramos Pinto', N'diego.ramos@nexora.com', N'$2a$10$BaAt7O/JBOwHI8dexnETXOnAFgVSxal6jl4WtpsOa.HIItpzHkTJm', N'DOCENTE', N'ACTIVO', N'+51 944 876 512', N'Consultor Ágil y DevOps', DATEADD(day, -95, SYSDATETIME())),
(5, N'Mateo', N'Salazar Ruiz', N'mateo.salazar@nexora.com', N'$2a$10$PhbaczZ9jVMBk6Y9MbPIUe/xeERzOgHWfXs4HQlEywBFErrZUOTAu', N'ESTUDIANTE', N'ACTIVO', N'+51 933 221 100', N'Analista de Seguridad Jr.', DATEADD(day, -80, SYSDATETIME())),
(6, N'Valeria', N'Núñez Soto', N'valeria.nunez@nexora.com', N'$2a$10$PhbaczZ9jVMBk6Y9MbPIUe/xeERzOgHWfXs4HQlEywBFErrZUOTAu', N'ESTUDIANTE', N'ACTIVO', N'+51 922 334 556', N'Consultora Cloud', DATEADD(day, -75, SYSDATETIME())),
(7, N'Joaquín', N'Paredes Lira', N'joaquin.paredes@nexora.com', N'$2a$10$PhbaczZ9jVMBk6Y9MbPIUe/xeERzOgHWfXs4HQlEywBFErrZUOTAu', N'ESTUDIANTE', N'ACTIVO', N'+51 911 556 778', N'Desarrollador Backend', DATEADD(day, -70, SYSDATETIME())),
(8, N'Camila', N'Rojas Mendoza', N'camila.rojas@nexora.com', N'$2a$10$PhbaczZ9jVMBk6Y9MbPIUe/xeERzOgHWfXs4HQlEywBFErrZUOTAu', N'ESTUDIANTE', N'ACTIVO', N'+51 900 667 889', N'Especialista en Datos', DATEADD(day, -60, SYSDATETIME())),
(9, N'Andrés', N'Villalba Cruz', N'andres.villalba@nexora.com', N'$2a$10$PhbaczZ9jVMBk6Y9MbPIUe/xeERzOgHWfXs4HQlEywBFErrZUOTAu', N'ESTUDIANTE', N'ACTIVO', N'+51 988 445 667', N'Analista de Riesgos', DATEADD(day, -45, SYSDATETIME())),
(10, N'Renata', N'Chávez Ocampo', N'renata.chavez@nexora.com', N'$2a$10$PhbaczZ9jVMBk6Y9MbPIUe/xeERzOgHWfXs4HQlEywBFErrZUOTAu', N'ESTUDIANTE', N'INACTIVO', N'+51 977 889 001', N'Asistente Administrativa', DATEADD(day, -30, SYSDATETIME()));
SET IDENTITY_INSERT usuario OFF;

SET IDENTITY_INSERT categoria ON;
INSERT INTO categoria (id, nombre, descripcion, estado, creado_en) VALUES
(1, N'Ciberseguridad', N'Programas de hacking ético, defensa y análisis forense digital.', N'ACTIVA', DATEADD(day, -100, SYSDATETIME())),
(2, N'Cloud y DevOps', N'Arquitectura cloud, automatización y despliegue continuo.', N'ACTIVA', DATEADD(day, -100, SYSDATETIME())),
(3, N'Gestión y Agilidad', N'Marcos ágiles, liderazgo y gestión de proyectos.', N'ACTIVA', DATEADD(day, -100, SYSDATETIME())),
(4, N'Datos y Analítica', N'Análisis de datos, visualización y aprendizaje automático.', N'ACTIVA', DATEADD(day, -90, SYSDATETIME()));
SET IDENTITY_INSERT categoria OFF;

SET IDENTITY_INSERT curso ON;
INSERT INTO curso (id, codigo, nombre, descripcion, categoria_id, docente_id, estado, horas, cupo, creado_en) VALUES
(1, N'CIS-101', N'Ciberseguridad Ofensiva & Análisis Forense', N'Curso integral de pentesting, análisis de tráfico y respuesta a incidentes con enfoque práctico.', 1, 2, N'PUBLICADO', 48, 30, DATEADD(day, -70, SYSDATETIME())),
(2, N'CLO-201', N'Arquitectura Cloud AWS', N'Diseño de arquitecturas seguras, escalables y resilientes sobre Amazon Web Services.', 2, 3, N'PUBLICADO', 40, 25, DATEADD(day, -65, SYSDATETIME())),
(3, N'AGE-301', N'Gestión de Proyectos Ágiles', N'Scrum, métricas, planificación de sprints y gestión de equipos de alto rendimiento.', 3, 4, N'PUBLICADO', 32, 30, DATEADD(day, -55, SYSDATETIME())),
(4, N'DAT-210', N'Análisis de Datos con Python', N'Manipulación de datos con pandas, visualización y modelos predictivos introductorios.', 4, 3, N'BORRADOR', 36, 30, DATEADD(day, -20, SYSDATETIME())),
(5, N'SEG-110', N'Seguridad de la Información ISO 27001', N'Implementación de un sistema de gestión de seguridad de la información basado en ISO 27001.', 1, 2, N'PUBLICADO', 24, 20, DATEADD(day, -50, SYSDATETIME())),
(6, N'DEV-220', N'Desarrollo Web Full Stack', N'Construcción de aplicaciones web modernas con Java, Spring Boot y frontend accesible.', 2, 4, N'PUBLICADO', 60, 35, DATEADD(day, -40, SYSDATETIME()));
SET IDENTITY_INSERT curso OFF;

SET IDENTITY_INSERT inscripcion ON;
INSERT INTO inscripcion (id, curso_id, estudiante_id, fecha, estado, creado_en) VALUES
(1, 1, 5, CAST(DATEADD(day, -40, SYSDATETIME()) AS DATE), N'ACTIVA', DATEADD(day, -40, SYSDATETIME())),
(2, 2, 5, CAST(DATEADD(day, -35, SYSDATETIME()) AS DATE), N'ACTIVA', DATEADD(day, -35, SYSDATETIME())),
(3, 3, 5, CAST(DATEADD(day, -30, SYSDATETIME()) AS DATE), N'ACTIVA', DATEADD(day, -30, SYSDATETIME())),
(4, 5, 5, CAST(DATEADD(day, -25, SYSDATETIME()) AS DATE), N'ACTIVA', DATEADD(day, -25, SYSDATETIME())),
(5, 1, 6, CAST(DATEADD(day, -38, SYSDATETIME()) AS DATE), N'ACTIVA', DATEADD(day, -38, SYSDATETIME())),
(6, 2, 6, CAST(DATEADD(day, -34, SYSDATETIME()) AS DATE), N'ACTIVA', DATEADD(day, -34, SYSDATETIME())),
(7, 3, 6, CAST(DATEADD(day, -29, SYSDATETIME()) AS DATE), N'ACTIVA', DATEADD(day, -29, SYSDATETIME())),
(8, 1, 7, CAST(DATEADD(day, -33, SYSDATETIME()) AS DATE), N'ACTIVA', DATEADD(day, -33, SYSDATETIME())),
(9, 2, 7, CAST(DATEADD(day, -31, SYSDATETIME()) AS DATE), N'ACTIVA', DATEADD(day, -31, SYSDATETIME())),
(10, 5, 7, CAST(DATEADD(day, -27, SYSDATETIME()) AS DATE), N'ACTIVA', DATEADD(day, -27, SYSDATETIME())),
(11, 1, 8, CAST(DATEADD(day, -26, SYSDATETIME()) AS DATE), N'ACTIVA', DATEADD(day, -26, SYSDATETIME())),
(12, 6, 8, CAST(DATEADD(day, -22, SYSDATETIME()) AS DATE), N'ACTIVA', DATEADD(day, -22, SYSDATETIME())),
(13, 1, 9, CAST(DATEADD(day, -24, SYSDATETIME()) AS DATE), N'ACTIVA', DATEADD(day, -24, SYSDATETIME())),
(14, 2, 9, CAST(DATEADD(day, -23, SYSDATETIME()) AS DATE), N'ACTIVA', DATEADD(day, -23, SYSDATETIME())),
(15, 3, 9, CAST(DATEADD(day, -21, SYSDATETIME()) AS DATE), N'ACTIVA', DATEADD(day, -21, SYSDATETIME())),
(16, 5, 10, CAST(DATEADD(day, -20, SYSDATETIME()) AS DATE), N'RETIRADA', DATEADD(day, -20, SYSDATETIME())),
(17, 6, 5, CAST(DATEADD(day, -18, SYSDATETIME()) AS DATE), N'ACTIVA', DATEADD(day, -18, SYSDATETIME())),
(18, 5, 6, CAST(DATEADD(day, -16, SYSDATETIME()) AS DATE), N'ACTIVA', DATEADD(day, -16, SYSDATETIME()));
SET IDENTITY_INSERT inscripcion OFF;

SET IDENTITY_INSERT unidad ON;
INSERT INTO unidad (id, curso_id, titulo, descripcion, orden, creado_en) VALUES
(1, 1, N'Fundamentos del pentesting', N'Metodologías de reconocimiento y modelado de amenazas.', 1, DATEADD(day, -60, SYSDATETIME())),
(2, 1, N'Explotación y análisis de tráfico', N'Vulnerabilidades web y lectura de tráfico con Wireshark.', 2, DATEADD(day, -58, SYSDATETIME())),
(3, 1, N'Respuesta a incidentes y forense', N'Cadena de custodia y elaboración de informes técnicos.', 3, DATEADD(day, -56, SYSDATETIME())),
(4, 2, N'Fundamentos de AWS', N'Modelo de responsabilidad compartida y servicios base.', 1, DATEADD(day, -50, SYSDATETIME())),
(5, 2, N'Redes y cómputo en la nube', N'VPC, subredes, EC2 y observabilidad.', 2, DATEADD(day, -48, SYSDATETIME())),
(6, 3, N'Marco ágil y Scrum', N'Roles, artefactos y eventos de Scrum.', 1, DATEADD(day, -45, SYSDATETIME())),
(7, 3, N'Planificación y métricas', N'Estimación, velocity y tableros de seguimiento.', 2, DATEADD(day, -43, SYSDATETIME())),
(8, 4, N'Python para ciencia de datos', N'Preparación y exploración de datos con pandas.', 1, DATEADD(day, -18, SYSDATETIME())),
(9, 5, N'Sistema de gestión de seguridad', N'Controles del Anexo A y gestión de riesgos.', 1, DATEADD(day, -42, SYSDATETIME())),
(10, 6, N'Frontend moderno', N'HTML semántico, CSS y JavaScript.', 1, DATEADD(day, -35, SYSDATETIME())),
(11, 6, N'Backend y despliegue', N'Spring Boot, JPA y contenedores.', 2, DATEADD(day, -33, SYSDATETIME()));
SET IDENTITY_INSERT unidad OFF;

SET IDENTITY_INSERT leccion ON;
INSERT INTO leccion (id, unidad_id, titulo, contenido, orden, duracion_min, creado_en) VALUES
(1, 1, N'Reconocimiento pasivo y activo', N'OSINT, enumeración de servicios y herramientas de descubrimiento.', 1, 45, DATEADD(day, -59, SYSDATETIME())),
(2, 1, N'Modelado de amenazas', N'STRIDE, superficies de ataque y priorización de riesgos.', 2, 40, DATEADD(day, -59, SYSDATETIME())),
(3, 2, N'Inyección SQL y XSS', N'Laboratorio guiado sobre OWASP Top 10 y mitigaciones.', 1, 60, DATEADD(day, -57, SYSDATETIME())),
(4, 2, N'Análisis de tráfico con Wireshark', N'Captura, filtros y detección de patrones anómalos.', 2, 50, DATEADD(day, -57, SYSDATETIME())),
(5, 3, N'Cadena de custodia digital', N'Recolección y preservación de evidencia digital.', 1, 35, DATEADD(day, -55, SYSDATETIME())),
(6, 3, N'Redacción del informe forense', N'Estructura, hallazgos y recomendaciones.', 2, 45, DATEADD(day, -55, SYSDATETIME())),
(7, 4, N'IAM y modelo de responsabilidad', N'Usuarios, roles, políticas y responsabilidad compartida.', 1, 40, DATEADD(day, -49, SYSDATETIME())),
(8, 4, N'VPC, subredes y seguridad', N'Diseño de redes privadas y grupos de seguridad.', 2, 50, DATEADD(day, -49, SYSDATETIME())),
(9, 5, N'EC2, S3 y alta disponibilidad', N'Cómputo, almacenamiento y balanceo de carga.', 1, 55, DATEADD(day, -47, SYSDATETIME())),
(10, 5, N'Monitoreo con CloudWatch', N'Métricas, alarmas y registros centralizados.', 2, 45, DATEADD(day, -47, SYSDATETIME())),
(11, 6, N'Scrum: roles y artefactos', N'Product Owner, Scrum Master y equipo de desarrollo.', 1, 35, DATEADD(day, -44, SYSDATETIME())),
(12, 6, N'Historias de usuario', N'Criterios de aceptación y definición de terminado.', 2, 40, DATEADD(day, -44, SYSDATETIME())),
(13, 7, N'Estimación y velocity', N'Story points, planning poker y capacidad.', 1, 45, DATEADD(day, -42, SYSDATETIME())),
(14, 7, N'Métricas ágiles', N'Burndown, cycle time y flujo de valor.', 2, 35, DATEADD(day, -42, SYSDATETIME())),
(15, 8, N'Pandas y limpieza de datos', N'DataFrames, valores nulos y transformaciones.', 1, 60, DATEADD(day, -17, SYSDATETIME())),
(16, 9, N'Controles del Anexo A', N'Selección y aplicabilidad de controles.', 1, 50, DATEADD(day, -41, SYSDATETIME())),
(17, 9, N'Gestión de riesgos', N'Identificación, evaluación y tratamiento del riesgo.', 2, 45, DATEADD(day, -41, SYSDATETIME())),
(18, 10, N'HTML, CSS y accesibilidad', N'Estructura semántica y buenas prácticas WCAG.', 1, 50, DATEADD(day, -34, SYSDATETIME())),
(19, 10, N'JavaScript y consumo de APIs', N'Fetch, eventos y manipulación del DOM.', 2, 55, DATEADD(day, -34, SYSDATETIME())),
(20, 11, N'Spring Boot y JPA', N'Controladores, servicios y persistencia.', 1, 60, DATEADD(day, -32, SYSDATETIME())),
(21, 11, N'Docker y despliegue', N'Imágenes, compose y variables de entorno.', 2, 50, DATEADD(day, -32, SYSDATETIME()));
SET IDENTITY_INSERT leccion OFF;

SET IDENTITY_INSERT material ON;
INSERT INTO material (id, leccion_id, nombre, tipo, ruta, tamanio_kb, subido_por, creado_en) VALUES
(1, 4, N'OWASP Testing Guide v4.2', N'ENLACE', N'https://owasp.org/www-project-web-security-testing-guide/', NULL, N'Marco Venegas Barreto', DATEADD(day, -56, SYSDATETIME())),
(2, 4, N'Documentación oficial de Wireshark', N'ENLACE', N'https://www.wireshark.org/docs/', NULL, N'Marco Venegas Barreto', DATEADD(day, -56, SYSDATETIME())),
(3, 3, N'OWASP Top 10', N'ENLACE', N'https://owasp.org/www-project-top-ten/', NULL, N'Marco Venegas Barreto', DATEADD(day, -57, SYSDATETIME())),
(4, 8, N'AWS Well-Architected Framework', N'ENLACE', N'https://docs.aws.amazon.com/wellarchitected/latest/framework/welcome.html', NULL, N'Lucía Ferrer Campos', DATEADD(day, -48, SYSDATETIME())),
(5, 9, N'Documentación de Amazon EC2', N'ENLACE', N'https://docs.aws.amazon.com/ec2/', NULL, N'Lucía Ferrer Campos', DATEADD(day, -46, SYSDATETIME())),
(6, 11, N'Scrum Guide 2020', N'ENLACE', N'https://scrumguides.org/scrum-guide.html', NULL, N'Diego Ramos Pinto', DATEADD(day, -43, SYSDATETIME())),
(7, 15, N'Documentación de pandas', N'ENLACE', N'https://pandas.pydata.org/docs/', NULL, N'Lucía Ferrer Campos', DATEADD(day, -16, SYSDATETIME())),
(8, 16, N'ISO/IEC 27001:2022', N'ENLACE', N'https://www.iso.org/standard/27001', NULL, N'Marco Venegas Barreto', DATEADD(day, -40, SYSDATETIME())),
(9, 20, N'Spring Boot Reference', N'ENLACE', N'https://docs.spring.io/spring-boot/index.html', NULL, N'Diego Ramos Pinto', DATEADD(day, -31, SYSDATETIME())),
(10, 21, N'Docker Get Started', N'ENLACE', N'https://docs.docker.com/get-started/', NULL, N'Diego Ramos Pinto', DATEADD(day, -31, SYSDATETIME()));
SET IDENTITY_INSERT material OFF;

SET IDENTITY_INSERT actividad ON;
INSERT INTO actividad (id, curso_id, unidad_id, titulo, tipo, descripcion, instrucciones, fecha_publicacion, fecha_limite, puntaje_max, estado, creado_por, creado_en) VALUES
(1, 1, 2, N'Taller: Análisis de tráfico con Wireshark', N'TAREA', N'Identificar patrones anómalos en una captura de red proporcionada.', N'Descargue la captura del aula, analice al menos tres flujos sospechosos y entregue un PDF con hallazgos y mitigaciones.', DATEADD(day, -4, SYSDATETIME()), DATEADD(day, 7, SYSDATETIME()), 20, N'DISPONIBLE', 2, DATEADD(day, -4, SYSDATETIME())),
(2, 1, 2, N'Cuestionario Técnico 1: Protocolos y NIDS', N'CUESTIONARIO', N'Evaluación de conceptos de redes, IDS/IPS y protocolos.', N'Responda las cinco preguntas en un máximo de 30 minutos. Solo se permite un intento.', DATEADD(day, -6, SYSDATETIME()), DATEADD(day, 5, SYSDATETIME()), 20, N'DISPONIBLE', 2, DATEADD(day, -6, SYSDATETIME())),
(3, 1, 3, N'Informe forense de incidente', N'TAREA', N'Elaborar un informe técnico a partir de un incidente simulado.', N'Aplique la cadena de custodia, documente evidencias y proponga medidas correctivas.', DATEADD(day, -20, SYSDATETIME()), DATEADD(day, -5, SYSDATETIME()), 20, N'CALIFICADA', 2, DATEADD(day, -20, SYSDATETIME())),
(4, 2, 5, N'Laboratorio: VPC y subredes seguras', N'TAREA', N'Diseñar una VPC con subredes públicas y privadas.', N'Entregue el diagrama de arquitectura y las reglas de grupos de seguridad justificadas.', DATEADD(day, -3, SYSDATETIME()), DATEADD(day, 10, SYSDATETIME()), 20, N'DISPONIBLE', 3, DATEADD(day, -3, SYSDATETIME())),
(5, 2, 4, N'Cuestionario Cloud Practitioner', N'CUESTIONARIO', N'Conceptos fundamentales de la nube de AWS.', N'Responda las preguntas de repaso antes de la fecha límite.', DATEADD(day, -25, SYSDATETIME()), DATEADD(day, -12, SYSDATETIME()), 20, N'CALIFICADA', 3, DATEADD(day, -25, SYSDATETIME())),
(6, 3, 7, N'Caso de negocio: Sprint 0', N'TAREA', N'Definir el alcance inicial de un producto digital.', N'Entregue la visión del producto, el backlog priorizado y los criterios de aceptación.', DATEADD(day, -2, SYSDATETIME()), DATEADD(day, 4, SYSDATETIME()), 20, N'DISPONIBLE', 4, DATEADD(day, -2, SYSDATETIME())),
(7, 5, 9, N'Cuestionario ISO 27001: controles', N'CUESTIONARIO', N'Evaluación de controles y gestión de riesgos.', N'Responda el cuestionario individual antes del cierre.', DATEADD(day, -30, SYSDATETIME()), DATEADD(day, -10, SYSDATETIME()), 20, N'CALIFICADA', 2, DATEADD(day, -30, SYSDATETIME())),
(8, 1, 1, N'Diagnóstico inicial de conocimientos', N'CUESTIONARIO', N'Evaluación de entrada del curso.', N'Cuestionario de diagnóstico sin impacto en la nota final.', DATEADD(day, -40, SYSDATETIME()), DATEADD(day, -30, SYSDATETIME()), 10, N'CERRADA', 2, DATEADD(day, -40, SYSDATETIME()));
SET IDENTITY_INSERT actividad OFF;

SET IDENTITY_INSERT pregunta ON;
INSERT INTO pregunta (id, actividad_id, enunciado, tipo, puntaje, orden) VALUES
(1, 2, N'¿Qué componente de red inspecciona paquetes y genera alertas según firmas?', N'OPCION_MULTIPLE', 5, 1),
(2, 2, N'Un NIDS puede detener por sí solo un ataque en curso.', N'VERDADERO_FALSO', 5, 2),
(3, 2, N'Escriba la sigla del protocolo usado para resolver nombres de dominio.', N'RESPUESTA_CORTA', 10, 3),
(4, 5, N'¿Qué servicio de AWS ofrece DNS gestionado?', N'OPCION_MULTIPLE', 10, 1),
(5, 5, N'AWS es responsable de la seguridad "en" la nube.', N'VERDADERO_FALSO', 10, 2),
(6, 7, N'¿Cuál es el propósito principal de un SGSI?', N'OPCION_MULTIPLE', 10, 1),
(7, 7, N'La norma ISO 27001 exige análisis de riesgos.', N'VERDADERO_FALSO', 10, 2),
(8, 8, N'¿Qué significa XSS?', N'OPCION_MULTIPLE', 5, 1),
(9, 8, N'Una contraseña robusta debe incluir mayúsculas, minúsculas, números y símbolos.', N'VERDADERO_FALSO', 5, 2);
SET IDENTITY_INSERT pregunta OFF;

SET IDENTITY_INSERT opcion ON;
INSERT INTO opcion (id, pregunta_id, texto, es_correcta, orden) VALUES
(1, 1, N'Firewall perimetral', 0, 1),
(2, 1, N'Sistema de detección de intrusos (IDS)', 1, 2),
(3, 1, N'Switch de acceso', 0, 3),
(4, 1, N'Router de borde', 0, 4),
(5, 2, N'Verdadero', 0, 1),
(6, 2, N'Falso', 1, 2),
(7, 3, N'DNS', 1, 1),
(8, 4, N'Amazon Route 53', 1, 1),
(9, 4, N'Amazon S3', 0, 2),
(10, 4, N'AWS IAM', 0, 3),
(11, 4, N'Amazon CloudFront', 0, 4),
(12, 5, N'Verdadero', 0, 1),
(13, 5, N'Falso', 1, 2),
(14, 6, N'Proteger la confidencialidad, integridad y disponibilidad de la información', 1, 1),
(15, 6, N'Aumentar las ventas de la organización', 0, 2),
(16, 6, N'Reducir la planilla del personal', 0, 3),
(17, 6, N'Automatizar el marketing digital', 0, 4),
(18, 7, N'Verdadero', 1, 1),
(19, 7, N'Falso', 0, 2),
(20, 8, N'Cross-Site Scripting', 1, 1),
(21, 8, N'Cross-Server eXecution', 0, 2),
(22, 8, N'XML Security System', 0, 3),
(23, 8, N'Extended Security', 0, 4),
(24, 9, N'Verdadero', 1, 1),
(25, 9, N'Falso', 0, 2);
SET IDENTITY_INSERT opcion OFF;

SET IDENTITY_INSERT entrega ON;
INSERT INTO entrega (id, actividad_id, estudiante_id, fecha_entrega, respuesta_texto, archivo_nombre, archivo_ruta, estado, creado_en) VALUES
(1, 3, 5, DATEADD(day, -8, SYSDATETIME()), N'Informe con cadena de custodia, hallazgos y plan de mitigación.', NULL, NULL, N'CALIFICADA', DATEADD(day, -8, SYSDATETIME())),
(2, 2, 5, DATEADD(day, -5, SYSDATETIME()), NULL, NULL, NULL, N'CALIFICADA', DATEADD(day, -5, SYSDATETIME())),
(3, 2, 6, DATEADD(day, -5, SYSDATETIME()), NULL, NULL, NULL, N'CALIFICADA', DATEADD(day, -5, SYSDATETIME())),
(4, 3, 6, DATEADD(day, -6, SYSDATETIME()), N'Análisis del incidente y recomendaciones de mejora continua.', NULL, NULL, N'ENTREGADA', DATEADD(day, -6, SYSDATETIME())),
(5, 3, 7, DATEADD(day, -4, SYSDATETIME()), N'Informe preliminar con evidencias recolectadas.', NULL, NULL, N'ENTREGADA', DATEADD(day, -4, SYSDATETIME())),
(6, 2, 8, DATEADD(day, -5, SYSDATETIME()), NULL, NULL, NULL, N'CALIFICADA', DATEADD(day, -5, SYSDATETIME())),
(7, 7, 9, DATEADD(day, -11, SYSDATETIME()), NULL, NULL, NULL, N'CALIFICADA', DATEADD(day, -11, SYSDATETIME())),
(8, 5, 6, DATEADD(day, -13, SYSDATETIME()), NULL, NULL, NULL, N'CALIFICADA', DATEADD(day, -13, SYSDATETIME())),
(9, 8, 5, DATEADD(day, -31, SYSDATETIME()), NULL, NULL, NULL, N'CALIFICADA', DATEADD(day, -31, SYSDATETIME()));
SET IDENTITY_INSERT entrega OFF;

SET IDENTITY_INSERT respuesta ON;
INSERT INTO respuesta (id, entrega_id, pregunta_id, opcion_id, texto_respuesta, es_correcta, puntaje) VALUES
(1, 2, 1, 2, NULL, 1, 5),
(2, 2, 2, 6, NULL, 1, 5),
(3, 2, 3, NULL, N'DNS', 1, 10);
SET IDENTITY_INSERT respuesta OFF;

SET IDENTITY_INSERT calificacion ON;
INSERT INTO calificacion (id, entrega_id, puntaje, retroalimentacion, fecha, calificado_por) VALUES
(1, 1, 18, N'Excelente análisis de evidencias. Mejorar la sección de conclusiones.', DATEADD(day, -7, SYSDATETIME()), 2),
(2, 2, 15, N'Auto-calificado por el sistema.', DATEADD(day, -5, SYSDATETIME()), NULL),
(3, 3, 20, N'Auto-calificado por el sistema.', DATEADD(day, -5, SYSDATETIME()), NULL),
(4, 6, 10, N'Auto-calificado por el sistema.', DATEADD(day, -5, SYSDATETIME()), NULL),
(5, 7, 16, N'Auto-calificado por el sistema.', DATEADD(day, -10, SYSDATETIME()), NULL),
(6, 8, 18, N'Auto-calificado por el sistema.', DATEADD(day, -12, SYSDATETIME()), NULL),
(7, 9, 10, N'Auto-calificado por el sistema.', DATEADD(day, -30, SYSDATETIME()), NULL);
SET IDENTITY_INSERT calificacion OFF;

SET IDENTITY_INSERT aviso ON;
INSERT INTO aviso (id, curso_id, titulo, mensaje, tipo, estado, fecha_publicacion, autor_id, creado_en) VALUES
(1, 1, N'Cambio de aula para el taller de Wireshark', N'El taller práctico se realizará en el laboratorio virtual. Revisen el enlace publicado en la lección 4.', N'IMPORTANTE', N'PUBLICADO', DATEADD(day, -1, SYSDATETIME()), 2, DATEADD(day, -1, SYSDATETIME())),
(2, 1, N'Nueva guía de análisis forense disponible', N'Se agregó la guía OWASP actualizada en los materiales de la unidad 2. Revísenla antes de la próxima sesión.', N'INFORMATIVO', N'PUBLICADO', DATEADD(day, -3, SYSDATETIME()), 2, DATEADD(day, -3, SYSDATETIME())),
(3, 2, N'Recordatorio: laboratorio de VPC', N'La entrega del laboratorio de VPC cierra en 10 días. Programen su avance con anticipación.', N'IMPORTANTE', N'PUBLICADO', DATEADD(day, -2, SYSDATETIME()), 3, DATEADD(day, -2, SYSDATETIME())),
(4, 3, N'Revisión de avances del Sprint 0', N'Las sesiones de revisión se realizarán el jueves a las 19:00. Cada equipo expondrá su backlog priorizado.', N'INFORMATIVO', N'PUBLICADO', DATEADD(day, -4, SYSDATETIME()), 4, DATEADD(day, -4, SYSDATETIME())),
(5, 5, N'Auditoría interna programada', N'La auditoría interna del SGSI se ejecutará la próxima semana. Revisen la documentación de controles.', N'URGENTE', N'PUBLICADO', DATEADD(day, -1, SYSDATETIME()), 2, DATEADD(day, -1, SYSDATETIME()));
SET IDENTITY_INSERT aviso OFF;

INSERT INTO auditoria (usuario_id, usuario_nombre, accion, entidad, entidad_id, detalle, ip, fecha_hora) VALUES
(1, N'Patricia Salcedo Quispe', N'INICIO_SESION', N'usuario', 1, N'Acceso al portal administrativo', N'127.0.0.1', DATEADD(hour, -2, SYSDATETIME())),
(1, N'Patricia Salcedo Quispe', N'CREAR_INSCRIPCION', N'inscripcion', 17, N'Mateo Salazar inscrito en Desarrollo Web Full Stack', N'127.0.0.1', DATEADD(day, -1, SYSDATETIME())),
(2, N'Marco Venegas Barreto', N'PUBLICAR_ACTIVIDAD', N'actividad', 2, N'Cuestionario Técnico 1 publicado para CIS-101', N'127.0.0.1', DATEADD(day, -2, SYSDATETIME())),
(2, N'Marco Venegas Barreto', N'CALIFICAR_ENTREGA', N'entrega', 1, N'Calificación de informe forense: 18/20', N'127.0.0.1', DATEADD(day, -3, SYSDATETIME())),
(3, N'Lucía Ferrer Campos', N'CREAR_ACTIVIDAD', N'actividad', 4, N'Laboratorio de VPC creado para CLO-201', N'127.0.0.1', DATEADD(day, -3, SYSDATETIME())),
(4, N'Diego Ramos Pinto', N'PUBLICAR_AVISO', N'aviso', 4, N'Aviso de revisión de avances del Sprint 0', N'127.0.0.1', DATEADD(day, -4, SYSDATETIME())),
(1, N'Patricia Salcedo Quispe', N'CREAR_USUARIO', N'usuario', 10, N'Cuenta de Renata Chávez registrada', N'127.0.0.1', DATEADD(day, -5, SYSDATETIME())),
(1, N'Patricia Salcedo Quispe', N'ACTUALIZAR_ESTADO_USUARIO', N'usuario', 10, N'Cuenta desactivada por solicitud de la usuaria', N'127.0.0.1', DATEADD(day, -4, SYSDATETIME())),
(2, N'Marco Venegas Barreto', N'PUBLICAR_MATERIAL', N'material', 2, N'Guía de Wireshark publicada en CIS-101', N'127.0.0.1', DATEADD(day, -6, SYSDATETIME())),
(2, N'Marco Venegas Barreto', N'INICIO_SESION', N'usuario', 2, N'Acceso al portal docente', N'127.0.0.1', DATEADD(hour, -5, SYSDATETIME()));
