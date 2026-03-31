# ============================================================
#  Clase 01 — Instalación y primeros pasos
#  R: limpieza, manipulación y exploración de datos
#  FCE — Universidad Nacional del Litoral
# ============================================================



# ------------------------------------------------------------
# 1. R como calculadora
# ------------------------------------------------------------

1 + 1
1 - 54
5 * 3
54 / 51
54 ^ 4

5 * (3 + 8)   # los paréntesis respetan la precedencia habitual



# ------------------------------------------------------------
# 2. Funciones matemáticas predefinidas
# ------------------------------------------------------------

sqrt(98)        # raíz cuadrada
abs(-15)        # valor absoluto
log(15)         # logaritmo natural (base e)
log(54, base = 10)  # logaritmo en base 10
factorial(5)    # factorial

mean(c(12, 14)) # promedio — mean() espera un vector, no valores sueltos

# Consultá la documentación de cualquier función con ?
?log
?mean



# ------------------------------------------------------------
# 3. Variables y asignación
# ------------------------------------------------------------

# El operador de asignación es <-
calculo <- sqrt(8 + 1)
calculo
calculo + 1

# = también funciona pero no se recomienda en R
# 5 = 10  <- esto da error: = no es el operador de comparación

# Nombres de variables: snake_case es la convención de tidyverse
mi_variable     <- 42
promedio_notas  <- 7.5
nombre_del_curso <- "Curso de R"



# ------------------------------------------------------------
# 4. Tipos de datos
# ------------------------------------------------------------

# --- Lógico (logical) ---
llueve           <- FALSE
llovio           <- c(FALSE, TRUE, FALSE, FALSE, FALSE)
es_mayor_de_edad <- 30 >= 18   # los comparadores generan lógicos

# Operadores lógicos
TRUE & FALSE   # Y  → FALSE
TRUE & TRUE    # Y  → TRUE
TRUE | FALSE   # O  → TRUE
!TRUE          # NO → FALSE

# --- Numérico (numeric) ---
edad    <- 30
altura  <- 1.75
notas   <- c(8, 5, 7, 4, 9)

# --- Carácter (character) ---
"Argentina"          # con comillas → texto
# Argentina          # sin comillas → R lo busca como objeto (da error)

nombre   <- "Jonatán"
pais     <- "Argentina"
paste("Hola,", nombre)                 # concatena con espacio
paste0("País: ", pais)                 # concatena sin espacio



# ------------------------------------------------------------
# 5. Verificación y coerción de tipos
# ------------------------------------------------------------

is.numeric("5")      # FALSE — el "5" es texto, no número
is.character("5")    # TRUE
is.logical(TRUE)     # TRUE

# Coerción implícita: R convierte al tipo más amplio
c(TRUE, 15, "1")     # todo se convierte a character
TRUE + TRUE + FALSE  # los lógicos se convierten a entero: 1 + 1 + 0 = 2

# Coerción explícita con as.*
as.numeric("8") + 5  # convierte el texto a número antes de sumar
as.character(2025)   # convierte el número a texto
as.logical(0)        # 0 → FALSE; cualquier otro número → TRUE



# ------------------------------------------------------------
# 6. Vectores
# ------------------------------------------------------------

# Por extensión con c()
mis_numeros <- c(1, 5, 10, 15)
nombres     <- c("Ana", "Bruno", "Carla")

# Por secuencia con :
uno_al_diez       <- 1:10
dos_al_menos_siete <- 2:-7

# Con seq(): control total del paso
seq(0, 1, by = 0.25)          # de 0 a 1 de a 0.25
seq(0, 100, length.out = 6)   # 6 valores equiespaciados entre 0 y 100

# Con rep(): repetición
rep(0, times = 5)             # cinco ceros
rep(c(1, 2), times = 3)       # repite el vector entero
rep(c(1, 2), each = 3)        # repite cada elemento

# Operaciones vectorizadas (elemento a elemento)
precios  <- c(100, 500, 200, 1500)
precios * 0.9          # descuento del 10 %
precios * 0.9 + 50     # descuento + envío fijo



# ------------------------------------------------------------
# 7. Indexación de vectores
# ------------------------------------------------------------

x <- c(10, 20, 30, 40, 50)

x[2]          # por posición: el segundo elemento
x[c(1, 3)]    # varios elementos
x[-2]         # todos menos el segundo

# Indexación lógica (filtrado)
x[x >= 30]    # elementos mayores o iguales a 30

notas_clase <- c(8, 5, 7, 4, 9, 6)
aprobo      <- notas_clase >= 6
notas_clase[aprobo]   # notas de quienes aprobaron
sum(aprobo)           # cuántos aprobaron (TRUE cuenta como 1)
mean(aprobo)          # proporción de aprobados



# ------------------------------------------------------------
# 8. Matrices
# ------------------------------------------------------------

m <- matrix(1:12, nrow = 4, ncol = 3)
m

# Nombres de filas y columnas
colnames(m) <- c("A", "B", "C")
rownames(m) <- c("f1", "f2", "f3", "f4")

# Acceso: [fila, columna]
m[2, ]     # toda la segunda fila
m[, 3]     # toda la tercera columna
m[1, 2]    # elemento fila 1, columna 2
