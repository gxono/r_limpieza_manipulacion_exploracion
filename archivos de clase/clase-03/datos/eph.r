library(readr)
eph <- read_delim("clase-03/datos/usu_individual_T325.txt", 
                    delim = ";", escape_double = FALSE, trim_ws = TRUE)


eph |> View()

eph
