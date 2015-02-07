#!/bin/bash

python src/utils/score_stats.py  -f results/clus.kmeans/k2.data.csv -k 2 -o results/stats/k2.stats.csv -d results/stats

python src/utils/score_stats.py  -f results/clus.kmeans/k3.data.csv -k 3 -o results/stats/k3.stats.csv -d results/stats

python src/utils/score_stats.py  -f results/clus.kmeans/k4.data.csv -k 4 -o results/stats/k4.stats.csv -d results/stats

python src/utils/score_stats.py  -f results/clus.kmeans/k5.data.csv -k 5 -o results/stats/k5.stats.csv -d results/stats

python src/utils/score_stats.py  -f results/clus.kmeans/k6.data.csv -k 6 -o results/stats/k6.stats.csv -d results/stats
