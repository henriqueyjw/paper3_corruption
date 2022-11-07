import re
import os
import pandas as pd

from sklearn import model_selection, preprocessing, linear_model, naive_bayes, metrics, svm
from sklearn.feature_extraction.text import TfidfVectorizer, CountVectorizer
from sklearn import decomposition, ensemble

import pandas as pd
import numpy as np
import xgboost, textblob, string
from keras.preprocessing import text, sequence
from keras import layers, models, optimizers

ini_path = 'E:/insper'
files = 'datajud.csv'
df = pd.read_csv(os.path.join(ini_path,files))
interesse = set(list(df[df.ano_cnj>=2020].reset_index(drop = True).numero))

ini_path = 'D:/insper'
files = 'sentencas_todas_processadas.csv'
df = pd.read_csv(os.path.join(ini_path,files))
df['ano'] = df.numero_processo.str[11:15].astype(float)
df = df[df['Acórdão']=='Sim'][df.ano>=2020]

df['numero_limpo'] = df.numero_processo.str.replace('\.|\-', '')
df_true = df[df.numero_limpo.isin(interesse)]
df_true['result'] = 1
df_false = df[~df.numero_limpo.isin(interesse)]
df_false['result'] = 0

df_final = pd.concat([df_true, df_false], ignore_index=True, sort=False)
train_x, valid_x, train_y, valid_y = model_selection.train_test_split(df_final['decisao_clean'], df_final['result'], random_state=42)

tfidf_vect_ngram = TfidfVectorizer(analyzer='word', token_pattern=r'\w{1,}', ngram_range=(1,3), max_features=10000)
tfidf_vect_ngram.fit(df_final.decisao_clean)
xtrain_tfidf_ngram =  tfidf_vect_ngram.transform(train_x)
xvalid_tfidf_ngram =  tfidf_vect_ngram.transform(valid_x)

def train_model(classifier, feature_vector_train, label, feature_vector_valid, is_neural_net=False):
    # fit the training dataset on the classifier
    classifier.fit(feature_vector_train, label)
    
    # predict the labels on validation dataset
    predictions = classifier.predict(feature_vector_valid)
    
    if is_neural_net:
        predictions = predictions.argmax(axis=-1)
    
    return metrics.accuracy_score(predictions, valid_y)

accuracy = train_model(naive_bayes.MultinomialNB(), xtrain_tfidf_ngram, train_y, xvalid_tfidf_ngram)
print("NB, N-Gram Vectors: ", accuracy)
accuracy = train_model(linear_model.LogisticRegression(penalty='l2', max_iter=1000), xtrain_tfidf_ngram, train_y, xvalid_tfidf_ngram)
print("LR, N-Gram Vectors: ", accuracy)
# accuracy = train_model(svm.SVC(), xtrain_tfidf_ngram, train_y, xvalid_tfidf_ngram)
# print("SVM, N-Gram Vectors: ", accuracy)
accuracy = train_model(ensemble.RandomForestClassifier(), xtrain_tfidf_ngram, train_y, xvalid_tfidf_ngram)
print("RF, N-Gram Vectors: ", accuracy)
accuracy = train_model(xgboost.XGBClassifier(), xtrain_tfidf_ngram.tocsc(), train_y, xvalid_tfidf_ngram.tocsc())
print("Xgb, N-Gram Vectors: ", accuracy)