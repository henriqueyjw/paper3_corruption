import os # Mapeia os arquivos existentes
import os.path # Auxilia para indicar o diretório e arquivo
import re # App do Regex, auxilia a encontrar e substituir expressões
import pandas as pd # App para trabalhar com base de dados
from sklearn.feature_extraction.text import CountVectorizer # Vetoriza os textos com uma forma definida
import numpy as np  # App para trabalhar com dados em vetores e séries
import matplotlib.pyplot as plt  # App para trabalhar com gráficos
import seaborn as sns  # App para editar gráficos
import warnings # App para editar os avisos do Python
from nltk.corpus import stopwords # Lista de conectores em diversos idiomas
warnings.simplefilter("ignore", DeprecationWarning) # Ignora certos avisos do Python
from sklearn.decomposition import LatentDirichletAllocation as LDA # Carrega o modelo LDA do App SK-Learn
sns.set_style('whitegrid') # Define o layout dos gráficos

root = 'D:/insper'
# file = 'sentencas_tj_processadas.csv'
file = 'sentencas_trf_processadas.csv'

df = pd.read_csv(os.path.join(root,file))
df = df.dropna(subset=['decisao_clean'])
stop_1 = stopwords.words('portuguese')
def plot_10_most_common_words(count_data, count_vectorizer):
    import matplotlib.pyplot as plt
    words = count_vectorizer.get_feature_names()
    total_counts = np.zeros(len(words))
    for t in count_data:
        total_counts+=t.toarray()[0]
    
    count_dict = (zip(words, total_counts))
    count_dict = sorted(count_dict, key=lambda x:x[1], reverse=True)[0:10]
    words = [w[0] for w in count_dict]
    counts = [w[1] for w in count_dict]
    x_pos = np.arange(len(words)) 
    
    plt.figure(2, figsize=(15, 15/1.6180))
    plt.subplot(title= '10 most common words')
    sns.set_context("notebook", font_scale=1.25, rc={"lines.linewidth": 2.5})
    sns.barplot(x=x_pos, y=counts, palette='husl')
    plt.xticks(x_pos, words, rotation=90) 
    plt.xlabel('words')
    plt.ylabel('counts')
    plt.show()
#     plt.savefig(os.path.join(root,f'freq_{ano}.png'))

count_vectorizer = CountVectorizer(stop_words = stop_1) # Definimos o método de vetorização e as palavras que o modelo deverá desconsiderar (conectores)
count_data = count_vectorizer.fit_transform(df['decisao_clean']) # Criamos a matriz de frequência de cada palavra dos textos que queremos analisar
plot_10_most_common_words(count_data, count_vectorizer) #'Chamamos' a função que apresenta as 10 palavras mais frequêntes.

def print_topics(model, count_vectorizer, n_top_words):
    words = count_vectorizer.get_feature_names()
    for topic_idx, topic in enumerate(model.components_):
        print("\nTopic #%d:" % topic_idx)
        print(" ".join([words[i] for i in topic.argsort()[:-n_top_words - 1:-1]]))

number_topics = 10 # Total de tópicos a serem mapeados pelo modelo
number_words = 10 # Total de palavras para cada tópico

lda = LDA(n_components=number_topics, n_jobs=-1) # Definindo o modelo LDA a ser mapeado
lda = lda.fit(count_data) # Mapeando os dados para os dados que já vetorizados

print_topics(lda, count_vectorizer, number_words) # Chamando a função que imprime os tópicos