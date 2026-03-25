# R para Limpieza, Manipulación y Exploración de Datos

Repositorio del curso **R para limpieza, manipulación y exploración de datos**, dictado en la **Facultad de Ciencias Económicas** de la **Universidad Nacional del Litoral**.

## Archivos de este repositorio.

### Clases

| # | Encuentro | Presentación |
|---|-----------|:---:|
| 1 | Instalación y primeros pasos | [PDF](presentaciones/clases/clase-01/main.pdf) |
| 2 | Estructuras de control y datos | [PDF](presentaciones/clases/clase-02/main.pdf) |
| 3 | Carga de datos y gráficos sencillos | [PDF](presentaciones/clases/clase-03/main.pdf) |
| 4 | Manipulación de datos I | [PDF](presentaciones/clases/clase-04/main.pdf) |
| 5 | Manipulación de datos II | [PDF](presentaciones/clases/clase-05/main.pdf) |
| 6 | 🚧 Pendiente | — |
| 7 | 🚧 Pendiente | — |
| 8 | 🚧 Pendiente | — |
| 9 | 🚧 Pendiente | — |
| 10 | 🚧 Pendiente | — |
| 11 | 🚧 Pendiente | — |
| 12 | 🚧 Pendiente | — |
| 13 | 🚧 Pendiente | — |

### Machetes

Incursiones por cada uno de los paquetes.

| Paquete | Descripción | Machete |
|---------|-------------|:---:|
| `dplyr` | Verbos para manipular tablas: filtrar, seleccionar, mutar, resumir | [PDF](presentaciones/machetes/dplyr/main.pdf) |
| `tidyr` | Reestructuración de datos: pivoteo, anidado y separación de columnas | [PDF](presentaciones/machetes/tidyr/main.pdf) |
| `readr` | Importación de archivos CSV, Excel y Google Sheets | [PDF](presentaciones/machetes/readr/main.pdf) |
| `janitor` | Limpieza de nombres de columnas y detección de duplicados | [PDF](presentaciones/machetes/janitor/main.pdf) |
| `lubridate` | Parseo y aritmética de fechas y horas | [PDF](presentaciones/machetes/lubridate/main.pdf) |
| `stringr` | Operaciones sobre cadenas de texto | [PDF](presentaciones/machetes/stringr/main.pdf) |
| `forcats` | Manejo y reordenamiento de factores | [PDF](presentaciones/machetes/forcats/main.pdf) |
| `regex` | Expresiones regulares aplicadas en R | [PDF](presentaciones/machetes/regex/main.pdf) |
| General | Operadores y operaciones básicas de R | [PDF](presentaciones/machetes/general/main.pdf) |

## Descripción

El curso introduce a los estudiantes en el uso de R como lenguaje de programación y entorno estadístico orientado al análisis de datos. R fue concebido específicamente para el análisis estadístico, lo que lo distingue de lenguajes de propósito general como Python o de alto rendimiento numérico como Julia, ofreciendo una sintaxis más amigable para este propósito.

Funciona como un puente instrumental para la aplicación empírica de conceptos teóricos de estadística y economía que los estudiantes ven a lo largo de la licenciatura. Además, al ser software libre y de código abierto, democratiza el acceso a herramientas de análisis acompañado de una comunidad global que desarrolla nuevas herramientas constantemente.

## ¿Por qué R?

- **Enfoque estadístico nativo:** A diferencia de Python o Julia, R fue concebido específicamente para el análisis de datos y la estadística, con una sintaxis más amigable para este propósito.
- **Puente hacia la Economía:** Sirve como puente instrumental para la aplicación empírica de conceptos teóricos de estadística y economía.
- **Ecosistema especializado:** Cuenta con una comunidad académica inmensa y paquetes desarrollados por investigadores para resolver problemas econométricos específicos.
- **Diseño para el análisis:** Su lógica vectorial permite operar sobre conjuntos de datos de forma natural y eficiente desde el primer momento.

## R vs. Excel

- **Reproducibilidad y auditoría:** En R, los datos crudos nunca se tocan. El código funciona como un registro histórico exacto de cada paso, filtro y cálculo aplicado. A diferencia de Excel, donde datos y fórmulas conviven en la misma celda y un clic accidental puede alterar un modelo entero sin dejar rastro.
- **Escalabilidad:** Mientras que Excel colapsa con grandes volúmenes de datos, R permite gestionar eficientemente bases complejas y automatizar la producción de informes técnicos.
- **Prevención de errores:** En R, el proceso completo desde la importación de datos (Excel, CSV) hasta el resultado final queda registrado.

## Información del curso

| | |
|---|---|
| **Carrera** | Licenciatura en Economía |
| **Régimen de cursado** | Cuatrimestral |
| **Modalidad** | Presencial |
| **Carga horaria total** | 45.5 h totales: 32.5 h presenciales + 13 h autónomas |

## Propósitos y objetivos

Se pretende que los estudiantes adquieran competencias en el uso de R para limpieza, manipulación y exploración de datos, con el fin de mejorar su capacidad para analizar y visualizar datos en contextos académicos y profesionales.

### Propósitos

- **Promover la alfabetización de datos y la reproducibilidad:** Fomentar la adopción de flujos de trabajo que superen las limitaciones de las hojas de cálculo, priorizando procesos auditables, escalables y transparentes mediante el uso de código.
- **Facilitar la transición hacia la programación estadística:** Introducir a los estudiantes en la lógica de programación y el pensamiento algorítmico, sirviendo como puente instrumental para la aplicación empírica de conceptos teóricos de estadística y economía.
- **Desarrollar competencias de comunicación técnica:** Capacitar a los asistentes en la generación automática de reportes profesionales que integren análisis, narrativa y visualización.
- **Integración curricular:** Alinear las competencias tecnológicas con los estándares académicos de la Facultad, proporcionando una base sólida en R que potencie el desempeño en asignaturas correlativas y proyectos de investigación.

### Objetivos de aprendizaje

Al finalizar el curso, se espera que los estudiantes sean capaces de:

1. Comprender la lógica de programación en R, diferenciando el enfoque vectorial de otros paradigmas y gestionando eficientemente el entorno de trabajo RStudio.
2. Gestionar el ciclo de vida de los datos, desde la importación de diversas fuentes (Excel, CSV, texto) hasta la organización de proyectos reproducibles.
3. Implementar técnicas de *Data Wrangling* utilizando el ecosistema `tidyverse` para limpiar, transformar, filtrar y reestructurar bases de datos complejas.
4. Analizar series temporales, aplicando funciones específicas para el manejo de fechas, cálculo de rezagos y variaciones interanuales o mensuales.
5. Diseñar visualizaciones de datos efectivas, aplicando la gramática de gráficos (`ggplot2`) para revelar patrones y comunicar hallazgos con calidad de publicación.
6. Automatizar la producción de informes técnicos, utilizando Quarto para crear documentos dinámicos (PDF, HTML, Word) que vinculen directamente el código con sus resultados.

## Programa analítico

El programa se estructura en cinco ejes temáticos que articulan de manera progresiva las competencias necesarias para el análisis de datos con R.

### Eje 1 — Familiarización con el entorno

Introduce al estudiante en el ecosistema de trabajo con R. Se presentan los fundamentos de la programación orientada a objetos y la lógica vectorial. Los participantes aprenderán a gestionar el entorno de desarrollo RStudio, comprendiendo la diferencia entre el uso interactivo de la consola y el desarrollo de scripts reproducibles. Se trabajará con los tipos de datos fundamentales (numéricos, caracteres, lógicos) y las estructuras básicas (vectores, matrices, factores, data frames y listas), enfatizando el manejo adecuado de valores perdidos. Adicionalmente, se introducen las estructuras de control de flujo (condicionales y bucles).

### Eje 2 — Carga de datos

Proporciona las herramientas necesarias para trabajar con los formatos de archivo más comunes en el ámbito profesional y académico: archivos de Excel, archivos de texto delimitado (CSV, TSV) y otros formatos estructurados. Los estudiantes aprenderán a gestionar proyectos de RStudio mediante archivos `.Rproj`, estableciendo flujos de trabajo organizados con rutas relativas que favorecen la reproducibilidad. Se introducen buenas prácticas para la inspección inicial de los datos importados.

### Eje 3 — Manipulación de datos

Se adopta el ecosistema *tidyverse*, especialmente el paquete `dplyr`, que propone una gramática consistente para la manipulación de datos mediante verbos específicos. Los estudiantes dominarán las operaciones fundamentales: selección de columnas (`select`), filtrado de filas (`filter`), ordenamiento (`arrange`), creación y modificación de variables (`mutate`), y agregación de información (`summarise`). Se introduce el operador pipe para encadenar operaciones de forma fluida y legible. Se profundiza en el tratamiento de datos faltantes, operaciones condicionales vectorizadas (`if_else`, `case_when`) y la estrategia *split-apply-combine* para análisis por grupos. Adicionalmente, se trabaja con el manejo de fechas mediante `lubridate`, y técnicas de reestructuración de datos (`pivot_longer`, `pivot_wider`) y operaciones relacionales (`joins`).

### Eje 4 — Representación de los datos

Se centra en `ggplot2`, implementación del paradigma de "gramática de gráficos" que permite construir visualizaciones complejas mediante la combinación sistemática de capas. Los estudiantes aprenderán a mapear variables a propiedades estéticas (posición, color, tamaño, forma), construyendo gráficos de distribución (histogramas, densidades, boxplots), relación (scatterplots, gráficos de línea) y comparación categórica. Se profundiza en el uso de facetas, personalización de escalas, ejes, etiquetas y temas profesionales.

### Eje 5 — Generación de informes

Integra todas las competencias previas mediante la creación de documentos dinámicos con Quarto. Los estudiantes aprenderán a combinar texto narrativo en formato Markdown con bloques de código ejecutable R, generando reportes que vinculan directamente el análisis con sus resultados. Se trabaja la configuración de *chunks* de código, formateo profesional de tablas (`gt`, `kableExtra`), referencias cruzadas, y la generación de múltiples formatos de salida (HTML, PDF, Word). Finalmente, se presenta la parametrización de reportes.

### Planificación

|  | S1 | S2 | S3 | S4 | S5 | S6 | S7 | S8 | S9 | S10 | S11 | S12 | S13 |
|---|:---:|:---:|:---:|:---:|:---:|:---:|:---:|:---:|:---:|:---:|:---:|:---:|:---:|
| **Eje 1** | ✓ | ✓ | | | | | | | | | | | |
| **Eje 2** | | | ✓ | | | | | | | | | | |
| **Eje 3** | | | | ✓ | ✓ | ✓ | ✓ | | | | | | |
| **Eje 4** | | | ✓ | | | | | ✓ | ✓ | ✓ | | | |
| **Eje 5** | | | | | | | | | | | ✓ | ✓ | ✓ |


El resto de la información la pueden encontrar en el programa de la asignatura.