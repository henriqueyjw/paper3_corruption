import os
import os.path
import nltk
import pandas as pd
from nltk.corpus import stopwords
from wordcloud import WordCloud, STOPWORDS, ImageColorGenerator
import matplotlib.pyplot as plt

ini_path = 'D:/insper'
# name_report = 'sentencas_tj_processadas.csv'
name_report = 'sentencas_trf_processadas.csv'
stop = stopwords.words('portuguese')
# stop = stopwords.words('portuguese') + ['artigo','disse','codigo','processo','acusado','paulo','crime','autos',
#         'valor','justica','sendo','anos','tambem','acao','juizo','sobre','tribunal','estado','termos','porque','forma','denuncia','fatos','procedimento',
#         'ainda','sentenca','pois','comarca','havia','defesa','assim','jose','conforme','vara','publica','qualquer','documento','apos','caso','carlos','fato','apenas',
#         'dois','razao','reus','pratica','minimo','servicos','regime','relacao','delito','foro','fase','afirmou','direito','depoente','conduta','sido','parte','meses',
#         'quanto','silva','caput','epoca','todos','sabe','local','tendo','classe','dias','tres','outro','lauda','municipal','data','pessoa','horario','circunstâncias',
#         'antonio','prisao','entao','nome','alem','nada','documentos','conta','nunca','atendimento','conhecimento','vantagem','outros','inicial','vitima','duas','casa',
#         'informou','legal','testemunhas','durante','inciso','base','acusacao','provas','servico','reais','feito','digital','prestacao','eduardo','diante','fazer','julgado',
#         'somente','contrato','pessoas','penas','onde','cargo','vezes','presente','trânsito','ocorrencia','relatou','quatro','tempo','cumprimento','pode','quantia','momento',
#         'privativa','diasmulta','cada','instrucao','demais','santos','autoria','tipo','meio','pedido','ficou','funcao','assinado','execucao','modo','outras','nesse','aumento',
#         'administracao','oliveira','nesta','fixo','ordinario','portanto','periodo','deve','ambos','sentido','inquerito','elementos','outra','juiza','flagrante','segundo','vista',
#         'responsavel','criminosa','audiencia','acima','negou','correu','proprio','sistema','consta','ofereceu','fundamento','direitos','desde','tudo','contato','prejuizo','luiz',
#         'multa','setor','recebeu','previsto','ausencia','materialidade','inclusive','bens','depoimento','secretaria','acusada','sempre','margem','mesma','agente','objeto','nenhum',
#         'digitalmente','impressao','recorda','quais','agentes','ativa','antes','licitatorio','fazia','funcionarios','contra','assunto','apresentou','maria','declarou','incurso',
#         'direita','contas','salario','indevida','julgo','ante','cinco','filho','material','denunciado','organizacao','drogas','marco','falou','pediu','respeito','primeira','dolo',
#         'trafico','aberto','acordo','auto','final','trabalhava','situacao','serem','poder','declarante','celular','ribeiro','presidente','mediante','joao','conhece','dispensa',
#         'possivel','porem','desta','todo','recursos','origem','segunda','aplicacao','judicial','depoimentos','alegacoes','algum','embora','escritorio','prazo','exposto','feita',
#         'dizer','comissao','recurso','restou','central','tanto','passo','juiz','souza','disso','tais','trabalho','publicos','recebimento','civil','dentro','todas','realizacao',
#         'boletim','considerando','sabia','confirmou','informacoes','marcelo','participacao','havendo','junto','decisao','soube','qualificado','chegou','departamento','devidamente',
#         'militares','alguns','vinte','unico','poderia','finais','causa','ocasiao','apreensao','neste','posse','pretensao','como','requereu','causas','superior','pessoal','medida',
#         'participou','delitiva','lavagem','veiculos','realizada','junior','federal','social','condicoes','partes','trabalhou','advogado','ademais','falar','seis','infracao','luis','motivo',]


df = pd.read_csv(os.path.join(ini_path, name_report))
texto = ''
for index,row in df.iterrows():
    texto = texto + ' ' + str(row.decisao_clean)
wordcloud = WordCloud(stopwords = stop,max_font_size=50, max_words=100, background_color="white").generate(texto)
wordcloud.to_file(os.path.join(ini_path,f'wordcloud_trf.png')) # Essa linha salva o wordcloud em imagem PNG
plt.imshow(wordcloud, interpolation='bilinear')
plt.axis("off")
plt.show()