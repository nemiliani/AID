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

- Grafico de barras de calidad, parece que hay valores que no aparecen y ademas parece ser normales.
  Mostrar la tabla de frecuencias.

- Se hace PCA para detectar correlaciones entre las variables. Se pide la matriz de coeficientes
  de correlacion y se hacen biplots que relacionan las primeras 4 componentes que dan el 64% de la
  variabilidad. Dando :

    - 29% la cp1
    - 14% la cp2 

  De la matriz de correlaciones se ve que :
    - density y residual.sugar estan altamente correlacionadas (positivamente)
    - free.sulfur.dioxide y total.sulfur.dioxide estan altamente correlacionadas (positivamente)
    - density y alcohol estan altamente correlacionadas (negativamente)

  Esto puede verificarse en el biplot que relaciona las primeras dos componente del PCA.

Por los motivos descriptos anteriormente se continua el analisis de de clustering eliminando del
dataset las variables :

    - density
    - free.sulfur.dioxide

--------------------------------------------------

Clustering jerarquico

Ejecucion :

$ python src/clustering/cluster_hierarchical.py -f data/winequality-white.csv -d results/clus.jerarquico/dendrograma.png -c fixed_acidity volatile_acidity citric_acid residual_sugar chlorides total_sulfur_dioxide pH sulphates alcohol

El dendrograma no parece mostrar tantos clusters como puntos tiene la escala. De hecho, a priori, un punto razonable de corte parece ser entre valores de distancia 50 y 100 resultando en 6 clusters. 

--------------------------------------------------

Clustering K-Means


Como primera medida se normalizan las columnas que quedan en el analisis y se obtiene el grafico
de score de Silhouette en funcion de cantidad de clusters. En este se ve que el mejor valor del
score global se da con con k=3 clusters.

$ python src/clustering/cluster_kmeans.py -f data/winequality-white.csv -p tmp/scatter.png -s tmp/sil.png -v results/clus.kmeans/sil.vs.cluster.png -k 3 -j 6 -r 65432 -c fixed_acidity volatile_acidity citric_acid residual_sugar chlorides total_sulfur_dioxide pH sulphates alcohol -o tmp/out.csv -m tmp/metrics.csv


- results/clus.kmeans/sil.vs.cluster.png

---------------------------------------------------

Regresion logistica

- No hay valores faltantes en el dataset
- agrego una aleatoria para dividir en train y test
- diagrama de cook vs id


