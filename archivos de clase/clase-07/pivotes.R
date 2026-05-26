library(tidyverse) #tidyr
library(gt)

pbi <- tibble(
  pais = c("Argentina", "Brasil", "Chile", "Uruguay"),
  "yr2021" = c(487, 1649, 317, 61),
  "yr2022" = c(633, 1920, 301, 73),
  "yr2023" = c(622, 2174, 345, 78)
) |> view()

pbi_largo <- pbi |>
  pivot_longer(
    cols = starts_with("yr"),
    names_to = "anio",
    values_to = "pbi",
    names_prefix = "yr",
    names_transform = as.numeric
    )

pbi_largo |> 
  pivot_wider(
    names_from = pais,
    values_from = pbi,
    ) |>
  gt()

gt(pbi_largo)