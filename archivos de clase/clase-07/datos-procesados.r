library(tidyverse)
library(lubridate)
library(readr)

######################################
### ENCUESTA A SUPERMERCADOS
######################################
encuesta_supermercado_raw <- read_delim("clase-07/data/encuesta-supermercado.csv", 
                       delim = ";", escape_double = FALSE, locale = locale(decimal_mark = ",",  #locale es clave 
                                                                           grouping_mark = "."), trim_ws = TRUE)

# Data frame con numero de mes y etiqueta de meses
MESES <- tibble(
  mes_num = 1:12,
  mes = str_to_title(month(1:12, label = TRUE, abbr = FALSE))
) |> view()

encuesta_supermercado <- encuesta_supermercado_raw |> 
  mutate(mes_label = str_replace(mes_label, "\\*", "")) |> #hay que escapar el caracter *
  fill(anio) |>
  select(-"Total") |>
  pivot_longer(
    cols = -c(1:2),
    names_to = "rubro",
    values_to = "ingreso"
    ) |>
  left_join(MESES, by = join_by(mes_label == mes)) |> # dado que los nombres de meses se llaman distinto
  mutate(
    rubro = str_replace_all(rubro, "\\s{2,}", " "), #Si dos o mas espacios, reemplazar por un espacio
    fecha = make_date(anio, mes_num, 1)
  ) |>
  select(fecha, everything(), -anio) |>
  view()


######################################
### SERIE POBREZA
######################################
serie_pobreza_raw <- read_delim("clase-07/data/Serie-pobreza-e-indigencia-2S-2025.csv", 
                            delim = ";", escape_double = FALSE, na = ".", 
                            trim_ws = TRUE, col_names = FALSE)

serie_pobreza <- serie_pobreza_raw |>
  janitor::remove_empty() |>
  select(-c(X55, X165)) |>
  tail(2) |>
  rename(region = 1) |>
  view()

colnames(serie_pobreza)[-1] <- paste(
  rep(2001:2025, each = 4), 
  rep(1:2, each = 2, times = 25),
  rep(c("Hogares", "Personas"), times = 50),
  sep = "_"
)

serie_pobreza <- serie_pobreza |> 
  pivot_longer(cols = -1) |>
  separate_wider_delim(
    cols = "name",
    delim = "_",
    names = c("anio", "semestre", "categoria")
  ) |>
  rename(valor = value) |>
  view()


######################################
### QUITAR VARIABLES QUE NO SON MAS NECESARIAS
######################################
rm(encuesta_supermercado_raw, MESES, serie_pobreza_raw)


