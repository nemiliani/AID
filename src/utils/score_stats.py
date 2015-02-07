import pandas
import argparse
import matplotlib.pyplot as plt

if __name__ == '__main__':

    parser = argparse.ArgumentParser(description='Hierarchic clustering app')
    parser.add_argument('-f', '--data_file', type=str, help='data file')
    parser.add_argument('-k', '--clusters', type=int, help='amount of clusters')
    parser.add_argument('-o', '--output_file', type=str, default='out.csv')
    parser.add_argument('-d', '--output_dir', type=str, default='.')
    args = parser.parse_args()

    df = pandas.read_csv(args.data_file, sep=',', header=0)

    with open(args.output_file, 'w') as f:
        f.write('cluster,numero_instancias,q1,q2,q3,q4,q5,q6,q7,q8,q9,q10\n')
        for i in range(args.clusters):
            tmp = df[df.cluster == i]
            quality_count = []
            for q in range(1, 11):
                tmp_q = tmp[df.quality == q]
                quality_count.append('%.2f' % (len(tmp_q)/float(len(tmp))))
            f.write('%d,%d,%s\n' % (i, len(tmp), ','.join(quality_count)))
            plt.hist(list(tmp['quality']), bins=10, normed=0, histtype='bar')
            plt.title('Histograma KMeans k=%d clust_id=%d' % (int(args.clusters), i))
            plt.xlabel('Calidad')
            plt.savefig('%s/k%d.cid%d.hist.png' % (args.output_dir, args.clusters, i))
            plt.close()

