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

# corremos la regresion lineal simple 
REG =  lm( Tasa.de.ahorro ~ Tasa.de.interes , data = DATA)
summary(REG)

# lectura de resultados 
#### residuos de regresion 

print("Residuos")

"
Min    | 1Q        |   Median|   3Q    | Max 
-3.9167| -0.7250   |  0.1583 | 0.8708  |  2.3833 
"

print("El error estandar")
"\widehat{\sigma}
Residual standard error: 1.597 = 1.6
"

# Bonda de ajuste del modelo
print ("R^{2}")

"
multiple R-squared: 0.939, adjusted R-squared: 0.9356
"
print("F-statistic")

"F-statistic: 277.2 on 1 and 18 DF, p-value: 2.226e-12 
"
# H_{0}: \beta_{1}= 0 

print ("coeficiente del modelo")

# \Beta_{0} intercepto

"
Coefficients:
                |Estimate Std.| Error |t value
(Intercept)     |  2.1833     |0.8054 |  2.711
Tasa.de.interes |  1.7167     |0.1031 | 16.648
"

anova(REG)

# Residuos del modelo 
residuos = rstandard(REG)
valores.ajustados = fitted(REG)
plot(valores.ajustados , residuos)










