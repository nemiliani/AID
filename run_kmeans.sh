#!/bin/bash
python src/clustering/cluster_kmeans.py -f data/winequality-white.csv -p results/clus.kmeans/k2.scatter.png -s results/clus.kmeans/k2.sil.png -k 2 -j 6 -r 65432 -c fixed_acidity volatile_acidity citric_acid residual_sugar chlorides total_sulfur_dioxide pH sulphates alcohol -o results/clus.kmeans/k2.data.csv -m results/clus.kmeans/k2.metrics.csv

python src/clustering/cluster_kmeans.py -f data/winequality-white.csv -p results/clus.kmeans/k3.scatter.png -s results/clus.kmeans/k3.sil.png -k 3 -j 6 -r 65432 -c fixed_acidity volatile_acidity citric_acid residual_sugar chlorides total_sulfur_dioxide pH sulphates alcohol -o results/clus.kmeans/k3.data.csv -m results/clus.kmeans/k3.metrics.csv

python src/clustering/cluster_kmeans.py -f data/winequality-white.csv -p results/clus.kmeans/k4.scatter.png -s results/clus.kmeans/k4.sil.png -k 4 -j 6 -r 65432 -c fixed_acidity volatile_acidity citric_acid residual_sugar chlorides total_sulfur_dioxide pH sulphates alcohol -o results/clus.kmeans/k4.data.csv -m results/clus.kmeans/k4.metrics.csv

python src/clustering/cluster_kmeans.py -f data/winequality-white.csv -p results/clus.kmeans/k5.scatter.png -s results/clus.kmeans/k5.sil.png -k 5 -j 6 -r 65432 -c fixed_acidity volatile_acidity citric_acid residual_sugar chlorides total_sulfur_dioxide pH sulphates alcohol -o results/clus.kmeans/k5.data.csv -m results/clus.kmeans/k5.metrics.csv

python src/clustering/cluster_kmeans.py -f data/winequality-white.csv -p results/clus.kmeans/k6.scatter.png -s results/clus.kmeans/k6.sil.png -k 6 -j 6 -r 65432 -c fixed_acidity volatile_acidity citric_acid residual_sugar chlorides total_sulfur_dioxide pH sulphates alcohol -o results/clus.kmeans/k6.data.csv -m results/clus.kmeans/k6.metrics.csv
