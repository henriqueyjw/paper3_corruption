import re
import os
import os.path
import pandas as pd
import numpy as np
import string
from sklearn import model_selection, preprocessing, linear_model, naive_bayes, metrics, svm
from sklearn.feature_extraction.text import TfidfVectorizer, CountVectorizer
from sklearn import decomposition, ensemble
from sklearn.model_selection import train_test_split
from sklearn.feature_extraction.text import HashingVectorizer
from sklearn_extra.cluster import KMedoids
from sklearn.neighbors import DistanceMetric

ini_path = 'E:/artigo3'
files = 'sentencas_corrupcao_processadas.csv'
corrupcao = pd.read_csv(os.path.join(ini_path,files))
corrupcao = corrupcao.dropna()
centroids = list()

def closest_n_index(X, n):
    kmedoids = KMedoids(n_clusters=n, random_state=0).fit(X)
    return kmedoids.cluster_centers_, kmedoids.labels_

n_features = 10000
vectorizer_hash = HashingVectorizer(n_features=n_features, ngram_range=(1, 3))
X_hash = vectorizer_hash.transform(corrupcao.decisao_clean)
corrupcao['vector'] = list(X_hash.toarray())
corrupcao['dia'] = corrupcao.data.str[:2]
corrupcao['mes'] = corrupcao.data.str[3:5]
corrupcao['ano'] = corrupcao.data.str[6:11]
corrupcao.sort_values(by=['comarca','ano','mes','dia'], inplace=True)

for comarca in corrupcao.comarca.unique():
    for year in corrupcao.ano.unique():
        for month in corrupcao.mes.unique():
            for assunto in corrupcao.assunto.unique():
                if comarca == 'SÃO PAULO':
                    for foro in corrupcao[corrupcao.comarca == comarca].foro.unique():
                        try:
                            # X_hash = vectorizer_hash.transform(corrupcao.decisao_clean[(corrupcao.comarca == comarca) & (corrupcao.foro == foro) & (corrupcao.ano == year) & (corrupcao.mes == month)])
                            # n_assunto = len(corrupcao.assunto[(corrupcao.comarca == comarca) & (corrupcao.foro == foro) & (corrupcao.ano == year) & (corrupcao.mes == month)].unique())
                            X_hash = vectorizer_hash.transform(corrupcao.decisao_clean[(corrupcao.assunto == assunto) & (corrupcao.comarca == comarca) & (corrupcao.foro == foro) & (corrupcao.ano == year) & (corrupcao.mes == month)])
                            n_assunto = len(corrupcao.assunto[(corrupcao.assunto == assunto) & (corrupcao.comarca == comarca) & (corrupcao.foro == foro) & (corrupcao.ano == year) & (corrupcao.mes == month)].unique())
                            indices_centers, labels = closest_n_index(X_hash, n_assunto)
                            for vector in indices_centers.toarray():
                                rows = dict()
                                rows['comarca'] = comarca + ' - '+ foro
                                rows['assunto'] = assunto
                                rows['ano'] = year
                                rows['mes'] = month
                                rows['vectors'] = vector
                                centroids.append(rows)
                        except:
                            rows = dict()
                            rows['comarca'] = comarca + ' - '+ foro
                            rows['assunto'] = assunto
                            rows['ano'] = year
                            rows['mes'] = month
                            rows['vectors'] = np.nan
                            centroids.append(rows)

                if comarca != 'SÃO PAULO':
                    try:
                        # X_hash = vectorizer_hash.transform(corrupcao.decisao_clean[(corrupcao.comarca == comarca) & (corrupcao.ano == year) & (corrupcao.mes == month)])
                        # n_assunto = len(corrupcao.assunto[(corrupcao.comarca == comarca) & (corrupcao.ano == year) & (corrupcao.mes == month)].unique())
                        X_hash = vectorizer_hash.transform(corrupcao.decisao_clean[(corrupcao.assunto == assunto) & (corrupcao.comarca == comarca) & (corrupcao.ano == year) & (corrupcao.mes == month)])
                        n_assunto = len(corrupcao.assunto[(corrupcao.assunto == assunto) & (corrupcao.comarca == comarca) & (corrupcao.ano == year) & (corrupcao.mes == month)].unique())
                        indices_centers, labels = closest_n_index(X_hash, n_assunto)
                        for vector in indices_centers.toarray():
                            rows = dict()
                            rows['comarca'] = comarca
                            rows['assunto'] = assunto
                            rows['ano'] = year
                            rows['mes'] = month
                            rows['vectors'] = vector
                            centroids.append(rows)
                    except:
                        rows = dict()
                        rows['comarca'] = comarca
                        rows['assunto'] = assunto
                        rows['ano'] = year
                        rows['mes'] = month
                        rows['vectors'] = np.nan
                        centroids.append(rows)

corrupcao = pd.DataFrame(centroids)
corrupcao = corrupcao.dropna()

n_features = 10000
vectorizer_hash = HashingVectorizer(n_features=n_features, ngram_range=(1, 3))

files = 'sentencas_trafico_processadas.csv'
trafico = pd.read_csv(os.path.join(ini_path,files))
trafico = trafico.dropna()

X_hash = vectorizer_hash.transform(trafico.decisao_clean)
trafico['vector'] = list(X_hash.toarray())
trafico['dia'] = trafico.data.str[:2]
trafico['mes'] = trafico.data.str[3:5]
trafico['ano'] = trafico.data.str[6:11]
trafico.sort_values(by=['comarca','ano','mes','dia'], inplace=True)
centroids = list()

for comarca in trafico.comarca.unique():
    for year in trafico.ano.unique():
        for month in trafico.mes.unique():
            # for assunto in trafico.assunto.unique():
            if comarca == 'SÃO PAULO':
                for foro in trafico[trafico.comarca == comarca].foro.unique():
                    try:
                        X_hash = vectorizer_hash.transform(trafico.decisao_clean[(trafico.comarca == comarca) & (trafico.foro == foro) & (trafico.ano == year) & (trafico.mes == month)])
                        n_assunto = len(trafico.assunto[(trafico.comarca == comarca) & (trafico.foro == foro) & (trafico.ano == year) & (trafico.mes == month)].unique())
                        # X_hash = vectorizer_hash.transform(trafico.decisao_clean[(trafico.assunto == assunto) & (trafico.comarca == comarca) & (trafico.foro == foro) & (trafico.ano == year) & (trafico.mes == month)])
                        # n_assunto = len(trafico.assunto[(trafico.assunto == assunto) & (trafico.comarca == comarca) & (trafico.foro == foro) & (trafico.ano == year) & (trafico.mes == month)].unique())
                        indices_centers, labels = closest_n_index(X_hash, n_assunto)
                        for vector in indices_centers.toarray():
                            rows = dict()
                            rows['comarca'] = comarca + ' - '+ foro
                            # rows['assunto'] = assunto
                            rows['ano'] = year
                            rows['mes'] = month
                            rows['vectors'] = vector
                            centroids.append(rows)
                    except:
                        rows = dict()
                        rows['comarca'] = comarca + ' - '+ foro
                        # rows['assunto'] = assunto
                        rows['ano'] = year
                        rows['mes'] = month
                        rows['vectors'] = np.nan
                        centroids.append(rows)

            if comarca != 'SÃO PAULO':
                try:
                    X_hash = vectorizer_hash.transform(trafico.decisao_clean[(trafico.comarca == comarca) & (trafico.ano == year) & (trafico.mes == month)])
                    n_assunto = len(trafico.assunto[(trafico.comarca == comarca) & (trafico.ano == year) & (trafico.mes == month)].unique())
                    # X_hash = vectorizer_hash.transform(trafico.decisao_clean[(trafico.assunto == assunto) & (trafico.comarca == comarca) & (trafico.ano == year) & (trafico.mes == month)])
                    # n_assunto = len(trafico.assunto[(trafico.assunto == assunto) & (trafico.comarca == comarca) & (trafico.ano == year) & (trafico.mes == month)].unique())
                    indices_centers, labels = closest_n_index(X_hash, n_assunto)
                    for vector in indices_centers.toarray():
                        rows = dict()
                        rows['comarca'] = comarca
                        # rows['assunto'] = assunto
                        rows['ano'] = year
                        rows['mes'] = month
                        rows['vectors'] = vector
                        centroids.append(rows)
                except:
                    rows = dict()
                    rows['comarca'] = comarca
                    # rows['assunto'] = assunto
                    rows['ano'] = year
                    rows['mes'] = month
                    rows['vectors'] = np.nan
                    centroids.append(rows)

trafico = pd.DataFrame(centroids)
trafico = trafico.dropna()
centroids = list()

dist = DistanceMetric.get_metric('euclidean')
distancia = list()

for _,row in corrupcao.iterrows():
    X = row.vectors
    num_anterior = list()
    if row.comarca == 'SÃO PAULO':
        for linha in list(trafico[(trafico.comarca == row.comarca) & (trafico.foro == row.foro) & (trafico.ano == row.ano) & (trafico.mes == row.mes)].vectors):
            compare = list()
            compare.append(X)
            compare.append(linha)
            num_anterior.append(dist.pairwise(compare)[0][1])
        distancia.append(num_anterior)
    
    if row.comarca != 'SÃO PAULO':
        for linha in list(trafico[(trafico.comarca == row.comarca) & (trafico.ano == row.ano) & (trafico.mes == row.mes)].vectors):
            compare = list()
            compare.append(X)
            compare.append(linha)
            num_anterior.append(dist.pairwise(compare)[0][1])
        distancia.append(num_anterior)
        
corrupcao['distancia'] = distancia
corrupcao.to_excel(os.path.join(ini_path, f'corrupcao_trafico_distancia_corrigido.xlsx'), index=False)
