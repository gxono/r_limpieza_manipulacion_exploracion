library(tidyverse)
library(readxl)
library(janitor)


serie_pobreza_raw <- read_excel("clase-07/data/Serie-pobreza-e-indigencia-2S-2025.xlsx", 
                  sheet = "Cuadro 1", col_names = FALSE, 
                  na = ".")

serie_pobreza <- serie_pobreza_raw |>
  slice(-c(1,3)) |>
  remove_empty() |>
  view()

nombre_columnas <- paste(
  sep = "_",
  rep(2001:2025, each = 4),
  rep(1:2, each = 2, times = 25),
  rep(c("Hogares", "Personas"), times = 50)
  )

colnames(serie_pobreza)[1] <- "region"
colnames(serie_pobreza)[2:101] <- nombre_columnas

serie_pobreza |>
  slice(-1) |>
  pivot_longer(
    cols = 2:101, 
    values_to = "valor"
    ) |>
  separate_wider_delim(
    cols = "name",
    delim = "_",
    names = c("anio", "semestre", "categoria")
    ) |>
  view()


#########################
# GGPLOT2
#########################

starwars |> view()

ggplot(
  data = starwars, 
  mapping = aes(y = mass, x = height)
  )


starwars |> 
  ggplot(aes(y = mass, x = height, color = sex)) +
  geom_point() + 
  labs(
    x = "Altura",
    y = "Mass",
    color = "Sexo",
    )


starwars |> 
  ggplot(aes(y = mass, x = height, color = sex)) +
  geom_point()


starwars |> 
  ggplot(aes(y = mass, x = height)) +
  geom_point(color = "#140986")

starwars |> view()

diccionario <- tribble(
  ~en, ~es,
  "female", "femenino",
  "male", "masculino",
  "hermaphroditic", "hermafrodita",
  "none", "ninguno") |> view()



starwars |> 
  select(mass, height, sex, birth_year) |>
  left_join(diccionario, by = join_by("sex" == "en")) |>
  mutate(sexo_es = str_to_title(es)) |>
  ggplot(aes(x = birth_year, y = height, color = sexo_es, size = mass)) +
    geom_point() +
    labs(x = "Edad", y = "Altura", color = "Sexo")
