# Taller de Econometría: Modelo de Regresión Lineal Simple (MCO)

## 1. Modelo Estimado
La ecuación de regresión estimada para la Tasa de Ahorro ($Y$) en función de la Tasa de Interés ($X$) es:

$$Y_{EST} = 2.183 + 1.717 \cdot X$$

## 2. Interpretación Económica de los Parámetros
* **Intercepto ($\hat{\beta}_0 = 2.183$):** Representa el nivel autónomo estimado de la Tasa de Ahorro (2.183%) cuando la Tasa de Interés es del 0%.
* **Pendiente ($\hat{\beta}_1 = 1.717$):** Indica que por cada incremento de 1 punto porcentual en la Tasa de Interés, la Tasa de Ahorro aumenta en promedio 1.717 puntos porcentuales.

## 3. Verificación de Propiedades de MCO
* La sumatoria de las desviaciones ponderadas $\sum (X_i - \bar{X})(Y_i - \bar{Y})$ sobre $\sum (X_i - \bar{X})^2$ confirma la pendiente estimada de $1.717$.
* La sumatoria de los residuos ($\sum e_i$) es igual a $0$, cumpliendo la propiedad fundamental del método de Mínimos Cuadrados Ordinarios.