# Ecosistema de Datos para la Seguridad Organizacional

Este repositorio contiene el material práctico y los casos de estudio para el análisis de tipologías de datos dentro de la toma de decisiones gerenciales y la seguridad corporativa.

El objetivo pedagógico es examinar cómo coexisten los diferentes formatos de datos (**estructurados**, **semiestructurados** y **no estructurados**) dentro de un mismo incidente de seguridad física y control patrimonial en una empresa.

---

## El Caso de Estudio: Incidente en la Bóveda Central (03-SEP-2026)

A las **08:42:55 COT**, los sistemas de seguridad registraron una alerta por activación anómala en la esclusa blindada de la **Bóveda de Archivo y Valor** (Activo Crítico `ACT-0104`). 

A través de las tres carpetas del repositorio, los estudiantes analizarán cómo este mismo evento deja huellas en distintas fuentes y cómo cada tipo de dato exige métodos diferenciados de almacenamiento, procesamiento y análisis.

---

## Estructura del Repositorio y Taxonomía de Datos

### 1. `estructurados/` (Datos Tabulares Rígidos)
Datos con esquema predefinido (*Schema-on-Write*), organizados en filas y columnas. Ideales para almacenamiento relacional (RDBMS) y consultas con SQL.

* **`01_control_accesos.csv`**: Registros transaccionales de los torniquetes y puertas biométricas. Muestra la denegación de ingreso por ventana horaria no permitida (`EVT-98207`).
* **`02_inventario_activos.sql`**: Definición e inserción de la base de datos de activos críticos corporativos. Relaciona al custodio `EMP-1045` con la caja fuerte de la bóveda.

### 2. `semiestructurados/` (Formatos Flexibles con Jerarquías y Metadatos)
Datos que no siguen un esquema tabular estricto, pero incorporan marcadores, etiquetas o pares atributo-valor para dar contexto y estructura.

* **`01_evento_acceso.json`**: Carga útil (*payload*) en formato JSON emitido por la API del lector biométrico/PIN al momento de rechazar el acceso.
* **`02_auditoria_sistema.log`**: Bitácora cronológica del controlador de seguridad con campos fijos (timestamp, nivel de severidad) y mensajes variables de diagnóstico.
* **`03_alerta_perimetral.xml`**: Mensajería en formato XML generada por los sensores infrarrojos pasivos (PIR) de la bóveda al detectar movimiento.
* **`04_alerta_phishing.eml`**: Archivo estándar de correo electrónico. Posee cabeceras estrictamente estructuradas (`From:`, `To:`, `DKIM:`) y un cuerpo en lenguaje natural donde se evidencia el engaño social al custodio.

### 3. `no_estructurados/` (Datos Libres sin Esquema)
Información en su formato nativo que carece de estructura predefinida. Requiere técnicas avanzadas (Procesamiento de Lenguaje Natural, Visión por Computadora) para su aprovechamiento en Business Intelligence.

* **`01_minuta_novedades.txt`**: Relato narrativo en texto plano del vigilante de turno sobre la intervención física en el pasillo de la bóveda.
* **`02_reporte_incidente.pdf`**: Informe pericial consolidado con el dictamen de auditoría y análisis multifuente.
* **`03_portal_politicas.html`**: Código fuente de la política corporativa de horarios y control patrimonial (`POL-SEG-044`).
* **`04_evidencia_camara.png`**: Captura fotográfica del sistema de videovigilancia (CCTV) correspondiente a la cámara PTZ-04 en el instante del evento.

---

## Cómo Explorar los Ejemplos en GitHub

1. Haz clic directamente sobre cualquiera de los archivos en las carpetas superiores.
2. GitHub renderizará de forma nativa:
   * **Tablas interactivas** para el archivo `.csv`.
   * **Resaltado de sintaxis en colores** para los archivos `.sql`, `.json`, `.xml`, `.html` y `.log`.
   * **Visor de documentos y fotografías** para los archivos `.pdf` y `.png`.
   
 ---

## Material de Clase (Presentaciones)

Las diapositivas correspondientes a las sesiones se encuentran disponibles en formato PDF para consulta directa desde el navegador:

* [E1 - Definición](PRESENTACIONES/E1_DEFINICION.pdf)
* [E1 - Fundamentos](PRESENTACIONES/E1_FUNDAMENTOS.pdf)
* [E2 - Business Intelligence](PRESENTACIONES/E2_BUSINESS_INTELLIGENCE.pdf)
* [E2 - Business Analytics](PRESENTACIONES/E2_BUSINNES_ANALYTICS.pdf)
* [E2 - Ecosistema de Datos](PRESENTACIONES/E2_ECOSISTEMA_DATOS.pdf)