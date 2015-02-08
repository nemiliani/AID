import pandas
import argparse
import matplotlib.pyplot as plt

if __name__ == '__main__':

    parser = argparse.ArgumentParser(description='agrega variable')
    parser.add_argument('-f', '--data_file', type=str, help='data file')
    parser.add_argument('-o', '--output_file', type=str, default='out.csv')
    args = parser.parse_args()

    df = pandas.read_csv(args.data_file, sep=';', header=0)
    df['quality_2'] = df.apply(lambda x : 0 if x.get('quality') <= 5 else 1, axis=1)
    df.to_csv(args.output_file)

