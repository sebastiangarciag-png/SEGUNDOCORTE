library(readxl)

# Cargar solo las 2 columnas originales
DATA <- read_excel("datos.xlsx")

# Mostrar los datos originales en la Consola
print(DATA, n = Inf)

library(readxl)

# Cargar solo las columnas originales (Tasa de interés y Tasa de ahorro)
DATA <- read_excel("datos.xlsx.xlsx")

# Mostrar los datos originales en la Consola
print(DATA, n = Inf)

library(readxl)
DATA <- read_excel("datos.xlsx.xlsx")

View(DATA)


colnames(DATA)[1:2] <- c("Tasa.de.interes", "Tasa.de.ahorro")

DATA <- DATA |> dplyr::mutate(x_2 = Tasa.de.interes^2)

DATA = DATA |> dplyr::mutate(
  
  x_2 = Tasa.de.interes^2 ,
  
  x_XPRO = (Tasa.de.interes-mean(Tasa.de.interes)) ,
  
  y_YPRO = (Tasa.de.ahorro-mean(Tasa.de.ahorro)) ,
  
  x_XPRO_y_YPRO = (Tasa.de.interes-mean(Tasa.de.interes))*(Tasa.de.ahorro-mean(Tasa.de.ahorro)),
  
  x_XPRO_2 = ((Tasa.de.interes-mean(Tasa.de.interes))^2) ,
  
  y_EST = (2.183 + (1.717 * Tasa.de.interes)) ,
  
  ERROR =  (Tasa.de.ahorro-y_EST)
  
)








