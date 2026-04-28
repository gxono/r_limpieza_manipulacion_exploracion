library(tidyverse)

ventas <- readRDS("clase-05/ventas.rds")

filter(ventas, vendedor == "Ana") |> View()

filter(ventas, cantidad > 5) |> View()

filter(ventas, vendedor == "Ana" | vendedor == "Carla") |> View()


ventas |>
  filter(vendedor %in% c("Ana", "Carla")) |>
  View()



ventas |>
  filter(satisfaccion >= 2, satisfaccion <= 4) |>
  View()






#NO FUNCIONA
ventas |>
  filter(2 <= satisfaccion <= 4) |>
  View()

ventas |>
  filter(
    between(satisfaccion, 2, 4) & satisfaccion != 4
  ) |>
  View()
  




starwars |> drop_na() |> View()


#Regresion Lineal
starwars |>
  select(height, mass) |>
  drop_na() |>
  lm(mass ~ height, data = _) |> 
  summary()


starwars |> view()

ventas |> filter(
  str_detect(producto, ends_with("top"))) |>
  View()

# Combinar filtros
nombres <- starwars |>
  filter(
    height >= 150,
    mass <= 100,
    eye_color != "blue",
    homeworld %in% c("Naboo", "Tatooine"))


ventas |> arrange(desc(cantidad)) |> view()


ventas |> 
  arrange(vendedor, desc(cantidad)) |>
  view()

starwars |> 
  arrange(desc(height)) |> 
  view()






starwars |> 
  arrange(desc(mass)) |>
  pull(name) |>
  head(10) |>
  view()
  

nombre_ordenados[1:10] |> view()







starwars |> 
  slice_max(mass, n = 10) |>
  pull(name)

#destructivo
starwars |>
  arrange(mass) |>
  slice_min(height, n = 10) |>
  view()

  
?slice_min


ventas |> view()

ventas |> 
  summarise(
    .by = vendedor,
    monto_maximo      = max(monto),
    promedio_ventas_c = mean(cantidad),
    prom_satisf = mean(satisfaccion)
  ) |> 
    view()

ventas$cantidad |> max()


?summarise
