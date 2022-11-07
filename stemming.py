import re
import os
import os.path
import pandas as pd
from nltk.tokenize import RegexpTokenizer
import nltk

ini_path = 'D:/insper'
files = 'unificada_classificacao_tudo.csv'
df = pd.read_csv(os.path.join(ini_path,files))
# df = df[df.estado.isin(['AM', 'BA', 'CE', 'MS', 'MT', 'RJ', 'RS', 'SC', 'SP', 'AC','AL', 'PB', 'PE', 'RN', 'SE'])][df['Acórdão']=='Sim'].reset_index(drop=True)
# df = df[df.estado.isin(['TRF4','TRF5'])][df['Acórdão']=='Sim'].reset_index(drop=True)

def remove_accents(text):
    accents = {
        "Á": "A","Ã": "A","À": "A","á": "a","ã": "a","à": "a",
        "É": "E","é": "e","Ê": "E","ê": "e","Í": "I","í": "i",
        "Ó": "O","ó": "o","Õ": "O","õ": "o","Ô": "O","ô": "o",
        "Ú": "U","ú": "u",";": "",",": "","/": "","\\": "",
        "{": "","}": "","(": "",")": "","-": "","_": "","Ç":"C",
        "ç":"c",
    }
    text = str(text).lower()
    for k, v in accents.items():
        text = text.replace(k, v)
    return text

def normalize_texts(texts, to_stem=False):
    if to_stem:
        stemmer = nltk.stem.RSLPStemmer()
    normal_texts = []
    tk = RegexpTokenizer(r"\w+")
    stopwords = set(nltk.corpus.stopwords.words("portuguese")+ ['artigo','disse','codigo','processo','acusado','paulo','crime','autos',
        'valor','justica','sendo','anos','tambem','acao','juizo','sobre','tribunal','estado','termos','porque','forma','denuncia','fatos','procedimento',
        'ainda','sentenca','pois','comarca','havia','defesa','assim','jose','conforme','vara','publica','qualquer','documento','apos','caso','carlos','fato','apenas',
        'dois','razao','reus','pratica','minimo','servicos','regime','relacao','delito','foro','fase','afirmou','direito','depoente','conduta','sido','parte','meses',
        'quanto','silva','caput','epoca','todos','sabe','local','tendo','classe','dias','tres','outro','lauda','municipal','data','pessoa','horario','circunstâncias',
        'antonio','prisao','entao','nome','alem','nada','documentos','conta','nunca','atendimento','conhecimento','vantagem','outros','inicial','vitima','duas','casa',
        'informou','legal','testemunhas','durante','inciso','base','acusacao','provas','servico','reais','feito','digital','prestacao','eduardo','diante','fazer','julgado',
        'somente','contrato','pessoas','penas','onde','cargo','vezes','presente','trânsito','ocorrencia','relatou','quatro','tempo','cumprimento','pode','quantia','momento',
        'privativa','diasmulta','cada','instrucao','demais','santos','autoria','tipo','meio','pedido','ficou','funcao','assinado','execucao','modo','outras','nesse','aumento',
        'administracao','oliveira','nesta','fixo','ordinario','portanto','periodo','deve','ambos','sentido','inquerito','elementos','outra','juiza','flagrante','segundo','vista',
        'responsavel','criminosa','audiencia','acima','negou','correu','proprio','sistema','consta','ofereceu','fundamento','direitos','desde','tudo','contato','prejuizo','luiz',
        'multa','setor','recebeu','previsto','ausencia','materialidade','inclusive','bens','depoimento','secretaria','acusada','sempre','margem','mesma','agente','objeto','nenhum',
        'digitalmente','impressao','recorda','quais','agentes','ativa','antes','licitatorio','fazia','funcionarios','contra','assunto','apresentou','maria','declarou','incurso',
        'direita','contas','salario','indevida','julgo','ante','cinco','filho','material','denunciado','organizacao','drogas','marco','falou','pediu','respeito','primeira','dolo',
        'trafico','aberto','acordo','auto','final','trabalhava','situacao','serem','poder','declarante','celular','ribeiro','presidente','mediante','joao','conhece','dispensa',
        'possivel','porem','desta','todo','recursos','origem','segunda','aplicacao','judicial','depoimentos','alegacoes','algum','embora','escritorio','prazo','exposto','feita',
        'dizer','comissao','recurso','restou','central','tanto','passo','juiz','souza','disso','tais','trabalho','publicos','recebimento','civil','dentro','todas','realizacao',
        'boletim','considerando','sabia','confirmou','informacoes','marcelo','participacao','havendo','junto','decisao','soube','qualificado','chegou','departamento','devidamente',
        'militares','alguns','vinte','unico','poderia','finais','causa','ocasiao','apreensao','neste','posse','pretensao','como','requereu','causas','superior','pessoal','medida',
        'participou','delitiva','lavagem','veiculos','realizada','junior','federal','social','condicoes','partes','trabalhou','advogado','ademais','falar','seis','infracao','luis','motivo',])
    for t in texts:
        raw_text = remove_accents(t)  # steps 1 and 2
        tokens = tk.tokenize(raw_text)  # step 3
        processed_text = ""
        for tkn in tokens:
            if tkn.isalpha() and tkn not in stopwords and len(tkn) > 3:  # step 4
                if to_stem:
                    tkn = stemmer.stem(tkn)  # step 5
                processed_text += tkn + " "
        normal_texts.append(processed_text[:-1])
    return normal_texts

decisao_clean = list()
for _,row in df.iterrows():
    decisao_clean.append(normalize_texts([row.publicacao], to_stem=True))
df['decisao_clean'] = decisao_clean

decisao_clean = list()
for _,row in df.iterrows():
    decisao_clean.append(row.decisao_clean[0])
df['decisao_clean'] = decisao_clean
# df.to_csv(os.path.join(ini_path, f'sentencas_tj_processadas.csv'),index=False)
df.to_csv(os.path.join(ini_path, f'sentencas_todas_processadas.csv'),index=False)