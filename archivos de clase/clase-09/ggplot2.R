library(tidyverse)
library(gapminder)

# Elemental en ggplot2
# ggplot(data = gapminder, mapping = aes())


# Si se pasan en orden
# ggplot(gapminder, aes())

# Podemos usar pipes
# gapminder |> ggplot(aes())


gapminder |> 
  ggplot(aes(x = gdpPercap, y = lifeExp)) +
  geom_point(
    aes(
      fill = continent, 
      size = pop,
    ),
    shape = 21,
    color = "black"
  ) +
  scale_x_log10() +
  scale_size_area(max_size = 16) + 
  expand_limits(y = 0) + 
  labs(
    x = "PBI per capita",
    y = "Esperanza de vida",
    title = "Miami me lo confirmo",
    subtitle = "El subtitulo",
    caption = "Fuente: Elaboracion propia con base en...",
    fill = "Continente",
    size = "Poblacion"
    ) +
  theme_minimal()




gapminder |> ggplot(aes(x = gdpPercap)) + 
  geom_histogram(
    fill = "#001489",
    linewidth = 1,
    binwidth = 5000
  )



gapminder |> ggplot(aes(x = gdpPercap, fill = continent)) + 
  geom_density(
    linewidth = 0.5,
    alpha = 0.25,
  )


gapminder |> ggplot(aes(y = gdpPercap, x = continent, fill = continent)) + 
  geom_violin() +
  geom_boxplot(outliers = F, width = 0.05, fill = "white")



gapminder |> ggplot(aes(y = gdpPercap, x = continent, fill = continent)) + 
  geom_boxplot() +
  geom_jitter(
    width = 0.1,
    shape = 21,
    size = 2.5,
    alpha = 0.5
    )


gapminder |> ggplot(aes(x = gdpPercap, y = lifeExp)) + 
  geom_point(alpha = 0.15) +
  scale_x_log10() + 
  expand_limits(y = 0) +
  geom_smooth(se = FALSE, method = "lm")



gapminder |> ggplot(aes(x = gdpPercap, y = lifeExp)) + 
  geom_point(alpha = 0.15) +
  expand_limits(y = 0) + 
  facet_wrap(~continent, ncol = 5, scale = "free")


gapminder |> ggplot(aes(x = gdpPercap, y = lifeExp)) + 
  geom_point(alpha = 0.15) +
  facet_wrap(~continent, ncol = 5, scale = "free_y")




gapminder |> 
  filter(year %in% c(1952, 1977, 2007)) |>
  ggplot(aes(x = gdpPercap, y = lifeExp)) +
  geom_point() +
  facet_grid(. ~ continent)


gapminder |> 
  filter(year %in% c(1952, 1977, 2007)) |>
  ggplot(aes(x = gdpPercap, y = lifeExp)) +
  geom_point() +
  facet_wrap(~year, ncol = 1)




gapminder |> 
  group_by(continent) |>
  summarise(cantidad = n()) |>
  ggplot(aes(x = continent, y = cantidad)) +
  geom_col()

gapminder |> 
  ggplot(aes(x = continent)) +
  geom_col(stat = "count")

gapminder |> 
  ggplot(aes(x = continent)) +
  geom_bar()