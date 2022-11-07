import os
import pandas as pd
import re

def classe_texto(texto):
    agravo = re.search(r"agravo|agravante",texto, re.I|re.S)
    apelacao = re.search(r"apelante|apela[çc][aã]o",texto, re.I|re.S)
    precatorio = re.search(r"precat[óo]ri[oa]",texto, re.I|re.S)
    embargo = re.search(r"\sembargo[s]|\sembargad[oa]|aclarat[óo]rios",texto, re.I|re.S)
    excecao = re.search(r"exce[cç][aã]o\sde\ssuspei[cç][aã]o",texto, re.I|re.S)
    mandado = re.search(r"mandado",texto, re.I|re.S)
    hc = re.search(r"hc|habeas\scorpus",texto, re.I|re.S)
    improbidade = re.search(r"improbidade",texto, re.I|re.S)
    inquerito = re.search(r"inqu[eé]rito",texto, re.I|re.S)
    noticia = re.search(r"representa[cç][aã]o/scriminal|not[ií]cia[\s\-]crime",texto, re.I|re.S)
    procedimento = re.search(r"procedimento\sinvestiga",texto, re.I|re.S)

    if agravo != None:
        return "Agravo"
    elif apelacao != None:
        return "Apelacao"
    elif precatorio != None:
        return "Carta precatoria"
    elif embargo != None:
        return "Embargo"    
    elif excecao != None:
        return "Excecao"
    elif mandado != None:
        return "Execucao"  
    elif hc != None:
        return "Habeas Corpus"   
    elif improbidade != None:
        return "Improbidade"
    elif inquerito != None:
        return "Inquerito"
    elif noticia != None:
        return "Noticia-crime"
    elif procedimento != None:
        return "Procedimento investigatório"
    else:
        return "NDA"

def tipo_texto(texto):
    acordao = re.search(r'ac[óo]rd[aã]o|acordam',texto, re.I|re.S)   
    arquivamento = re.search(r"arquiv[ae]",texto, re.I|re.S)
    audiencia = re.search(r"audi[êe]ncia|termo",texto, re.I|re.S)
    certidao = re.search(r"certifico",texto, re.I|re.S)
    citacao = re.search(r"citad[oa]",texto, re.I|re.S)
    intimacao = re.search(r"intima|intimad[ao][s]",texto, re.I|re.S)
    decisao = re.search(r"pena|cumpra[\s\-]se|cumprimento|publique[\s\-]se|intime[\s\-]se|julgo|julgar|decis[aã]o|",texto, re.I|re.S)
    despacho = re.search(r"vistos|cumpra[\s\-]se|defiro|aguarde[\s\-]se|determino|recebo|designo|designado|determino|junte[\s\-]se",texto, re.I|re.S)

    if acordao != None:
        return 'Acórdão'
    elif arquivamento != None:
        return "Arquivamento"
    elif audiencia != None:
        return "Ata de audiencia"
    elif certidao != None:
        return "Certidao"
    elif citacao != None:
        return "Citacao"    
    elif intimacao != None:
        return "Intimacao"
    elif decisao != None and despacho == None:
        return "Decisao"  
    elif despacho != None and decisao == None:
        return "Despacho"
    else:
        return "NDA"   

classe = list()
tipo = list()
filepaths = {
# 'D:/insper/AC_separados':'TJAC_separados.csv',
# 'D:/insper/SC_separados':'TJSC_separados.csv',
# 'D:/insper/RS_separados':'TJRS_separados.csv',
# 'D:/insper/RJ_separados':'TJRJ_separados.csv',
# 'D:/insper/MT_separados':'TJMT_separados.csv',
# 'D:/insper/MS_separados':'TJMS_separados.csv',
# 'D:/insper/CE_separados':'TJCE_separados.csv',
# 'D:/insper/BA_separados':'TJBA_separados.csv',
# 'D:/insper/AM_separados':'TJAM_separados.csv',
# 'D:/insper/SP_separados':'TJSP_separados (10).csv',
# 'D:/insper/TRF5_separados':'TRF5_separados.csv',
# 'D:/insper/TRF4_separados':'TRF4_separados.csv',
'D:/insper':'revisao regex.xlsx',}

final_path = 'D:/insper/DO_classificados'

for u,v in filepaths.items():
    df = pd.read_excel(os.path.join(u,v))
    # df = pd.read_csv(os.path.join(u,v))
    classe = list()
    tipo = list()
    for _,row in df.iterrows():
        classe.append(classe_texto(row.publicacao))
        tipo.append(tipo_texto(row.publicacao))
    df['classe_publicacao'] = classe
    df['novo_tipo_publicacao'] = tipo
    df.to_excel(os.path.join(final_path,v[:-5]+'.xlsx'))
