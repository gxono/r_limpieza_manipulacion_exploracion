library(readxl)
library(stringr)



encuesta_raw <- read_excel("clase-03/datos/encuesta-supermercados-01-26.xlsx", 
                       sheet = "Cuadro 3")
etiquetas <- encuesta_raw[1, ]
encuesta <- encuesta_raw[-1, ]
rm(encuesta_raw)

View(encuesta_raw)


str(encuesta)

encuesta[, 3:14] <- as.numeric(encuesta[, 3:14])



library(readr)

encuesta <- read_delim("clase-03/datos/encuesta-supermercados-01-26.csv", 
                      delim = ";", escape_double = FALSE, trim_ws = TRUE)


encuesta |> str()



saveRDS(encuesta, file = "clase-03/datos/encuesta.rds")

encuesta2 <- readRDS(file = "clase-03/datos/encuesta.rds")
encuesta2
