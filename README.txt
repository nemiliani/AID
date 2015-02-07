idea.

El dataset de vinos asocia a cada registro un valor de calidad subjetivo que va del 1 al 10.
Estos valores son propuestos por expertos en vinos en base a sus percepciones sensoriales.

+ En base a tecnicas de clustering y metricas que permitan evaluar la calidad de ellos 
(silohuette) determinar si los datos indican realemente una esacala distinta a la
propuesta que va del 1 al 10. 

+ Predecir calidad  mala (1 al 5) buena (6 al 10) haciendo 
    + regresion logistica
    + random forests
    + analisis discriminante


--------------------------------------------------

Analisis exploratorio.

- Grafico de baras de calidad, parece que hay valores que no aparecen y ademas parece ser normales.
  Mostrar la tabla de frecuencias.

- Se hace un PCA para detectar correlaciones entre las variables. Se pide la matriz de coeficientes
  de correlacion y se hacen biplots que relacionan las primeras 4 componentes que dan el 64% de la
  variabilidad. Dando :

    - 29% la cp1
    - 14% la cp2 

  De la matriz de correlaciones se ve que :
    - density y residual.sugar estan altamente correlacionadas (positivamente)
    - free.sulfur.dioxide y total.sulfur.dioxide estan altamente correlacionadas (positivamente)
    - density y alcohol estan altamente correlacionadas (negativamente)

  Esto puede verse en el biplot que relaciona las primeras dos componente del PCA.

Por los motivos descriptos anteriormente se continua el analisis de de clustering eliminando del
dataset las variables :

    - density
    - free.sulfur.dioxide

Ejecucion :

$ python cluster_hierarchical.py -f ../../data/winequality.csv  -d dendogram.png -c fixed_acidity volatile_acidity citric_acid residual_sugar chlorides free_sulfur_dioxide total_sulfur_dioxide density pH sulphates alcohol type
