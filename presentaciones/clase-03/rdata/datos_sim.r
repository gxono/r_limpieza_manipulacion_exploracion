set.seed(123)
n <- 10000

ventas <- data.frame(
  id_transaccion = paste0("TXN-", sprintf("%03d", 1:n)),
  fecha = sample(seq(as.Date("2025-01-01"), by = "day", length.out = 365), n, replace = TRUE),
  cliente_tipo = factor(sample(c("Regular", "Premium", "Corporate"), n, replace = TRUE)),
  producto_cat = factor(sample(c("Smartphone", "Laptop", "Tablet", "Audio"), n, replace = TRUE)),
  unidades = sample(1:10, n, replace = TRUE),
  precio_unitario = round(runif(n, 50, 1500), 2),
  descuento_aplicado = sample(c(TRUE, FALSE), n, replace = TRUE, prob = c(0.3, 0.7)),
  metodo_pago = sample(c("Tarjeta", "Transferencia", "Efectivo"), n, replace = TRUE),
  costo_envio = round(runif(n, 5, 50), 2),
  puntuacion_satisfaccion = sample(c(1:5, NA), n, replace = TRUE, prob = c(0.1, 0.2, 0.4, 0.2, 0.05, 0.05))
)

write.csv(ventas, "ventas_complejo.csv", row.names = FALSE)
saveRDS(ventas, file = "ventas_complejo.rds", compress = TRUE)
#etc
