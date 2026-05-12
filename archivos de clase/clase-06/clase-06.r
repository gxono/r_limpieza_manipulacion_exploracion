library(tidyverse)
library(nycflights13)

flights |> view()

starwars |> view()

starwars

if_else(starwars$height >= 150, "Alto", "Bajo")

starwars |> mutate(
  edad_categoria = if_else(birth_year < 10, "[0, 10)",
                           if_else(birth_year < 20, "[10, 20)",
                                   if_else(birth_year < 30, "[20, 30)", "30+")))
)

starwars |> mutate(
  edad_categoria = case_when(
    birth_year < 10 ~ "[0, 10)",
    birth_year < 20 ~ "[10, 20)",
    birth_year < 30 ~ "[20, 30)",
    is.na(birth_year) ~ NA,
    .default = "30+"
  )
) |> 
  group_by(edad_categoria) |> 
  summarise(media = mean(height))

starwars |> mutate(
  sex_es = case_when(
    sex == "male" ~ "masculino",
    sex == "female" ~ "femenino",
    sex == "none" ~ "ninguno",
    sex == "hermaphroditic" ~ "hermafrodita"
  )
) |> view()

starwars |> mutate(
  sex_es = case_match(sex, 
      "male" ~ "masculino",
      "female" ~ "femenino",
      "hermaphroditic" ~ "hermafrodita",
      "none" ~ "ninguno"
    )
  ) |> view()


starwars |> mutate(
  tiene_carne = case_match(species,
                           c("Human", "Wookiee") ~ TRUE,
                           NA ~ NA,
                           .default = FALSE
                           ))

# BUSCAR FORMAS EFICIENTES DE CREAR GRUPOS DE EDADES 
#   PARA PIRAMIDES POBLACIONALES.


starwars |> mutate(
  across(
    ends_with("_color"),
    ~ toupper(.x),
    .names = "{.col}"
    )
) |> view()

 #30.48cm -> 1ft
starwars |> mutate(
  across(
    c("mass", "height"),
    list(
      redondeado = ~round(.x, 1),
      cadena = \(var) toString(var)
    ),
    .names = "{.col}: {.fn}"
)) |> view()


flights |> view()
glimpse(flights)


tiempo <- flights$time_hour

tiempo

f_nac <- ymd("1995/12/09")
hoy <- today()

dias <- hoy - f_nac
typeof(dias)
class(dias)

edad <- as.numeric(dias) / 365.25

edad




typeof(fecha)
class(fecha)

year(fecha)
month(fecha, label = TRUE)
day(fecha)


wday(f_nac, label = TRUE)
quarter(f_nac)
