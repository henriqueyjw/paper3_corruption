*----------------------------------------------------------------------------------* 
*-------------------      Logit Fixo Período Todo Lava Jato     -------------------* 
*----------------------------------------------------------------------------------*

*------------------- Regressao Logit Todos Grupos Efeito Fixo de Ano -------------------* 

clear
import delimited E:\artigo3\dados_logit_VJ_final_2.csv, encoding(utf8)
set matsize 10000
set maxiter 1000

encode tema, generate(tema_bin)
encode comarca, generate(comarca_bin)
encode assunto, generate(assunto_bin)
encode periodo_ajustado, generate(periodo_ajustado_bin)
encode classe, generate(classe_bin)

logit resultado classe_bin i.ano vaza_jato i.comarca_bin i.assunto_bin corrupcao_vaza_jato_filled, rob
margins, dydx(vaza_jato corrupcao_vaza_jato_filled) post
outreg2 using "E:\artigo3\logit_marg_VJ_2.xls", replace ctitle(Logit_corrupcao_Marg) keep(i.tema_bin vaza_jato corrupcao_vaza_jato_filled) label addtext(Type of Crime FE, NO, Subject FE, YES, Judicial District FE, YES , Year Trend, YES)

logit resultado classe_bin i.ano vaza_jato i.tema_bin i.comarca_bin corrupcao_vaza_jato_filled, rob
margins, dydx(i.tema_bin vaza_jato corrupcao_vaza_jato_filled) post
outreg2 using "E:\artigo3\logit_marg_VJ_2.xls", append ctitle(Logit_corrupcao_Marg) keep(i.tema_bin vaza_jato corrupcao_vaza_jato_filled) label addtext(Type of Crime FE, YES, Subject FE, NO, Judicial District FE, YES , Year Trend, YES)

logit resultado classe_bin i.ano vaza_jato i.tema_bin i.assunto_bin corrupcao_vaza_jato_filled, rob
margins, dydx(i.tema_bin vaza_jato corrupcao_vaza_jato_filled) post
outreg2 using "E:\artigo3\logit_marg_VJ_2.xls", append ctitle(Logit_corrupcao_Marg) keep(i.tema_bin vaza_jato corrupcao_vaza_jato_filled) label addtext(Type of Crime FE, YES, Subject FE, YES, Judicial District FE, NO , Year Trend, YES)

logit resultado classe_bin i.ano vaza_jato i.tema_bin i.comarca_bin i.assunto_bin corrupcao_vaza_jato_filled, rob
margins, dydx(i.tema_bin vaza_jato corrupcao_vaza_jato_filled) post
outreg2 using "E:\artigo3\logit_marg_VJ_2.xls", append ctitle(Logit_corrupcao_Marg) keep(i.tema_bin vaza_jato corrupcao_vaza_jato_filled) label addtext(Type of Crime FE, YES, Subject FE, YES, Judicial District FE, YES , Year Trend, NO)

logit resultado classe_bin i.ano vaza_jato i.tema_bin i.comarca_bin i.assunto_bin corrupcao_vaza_jato_filled, rob
margins, dydx(i.tema_bin vaza_jato corrupcao_vaza_jato_filled) post
outreg2 using "E:\artigo3\logit_marg_VJ_2.xls", append ctitle(Logit_corrupcao_Marg) keep(i.tema_bin vaza_jato corrupcao_vaza_jato_filled) label addtext(Type of Crime FE, YES, Subject FE, YES, Judicial District FE, YES , Year Trend, YES)

*------------------- regressao Logit Resultados (acordo = Condenado) -------------------* 

clear
import delimited E:\artigo3\dados_logit_trafico_VJ_final_2.csv, encoding(utf8)
set matsize 10000

encode tema, generate(tema_bin)
encode comarca, generate(comarca_bin)
encode assunto, generate(assunto_bin)
encode periodo_ajustado, generate(periodo_ajustado_bin)
encode classe, generate(classe_bin)

logit resultado classe_bin i.ano vaza_jato i.comarca_bin i.assunto_bin corrupcao_vaza_jato_filled, rob
margins, dydx(vaza_jato corrupcao_vaza_jato_filled) post
outreg2 using "E:\artigo3\logit_marg_trafico_VJ_2.xls", replace ctitle(Logit_corrupcao_Marg) keep(i.tema_bin vaza_jato corrupcao_vaza_jato_filled) label addtext(Type of Crime FE, NO, Subject FE, YES, Judicial District FE, YES , Year Trend, YES)

logit resultado classe_bin i.ano vaza_jato i.tema_bin i.comarca_bin corrupcao_vaza_jato_filled, rob
margins, dydx(i.tema_bin vaza_jato corrupcao_vaza_jato_filled) post
outreg2 using "E:\artigo3\logit_marg_trafico_VJ_2.xls", append ctitle(Logit_corrupcao_Marg) keep(i.tema_bin vaza_jato corrupcao_vaza_jato_filled) label addtext(Type of Crime FE, YES, Subject FE, NO, Judicial District FE, YES , Year Trend, YES)

logit resultado classe_bin i.ano vaza_jato i.tema_bin i.assunto_bin corrupcao_vaza_jato_filled, rob
margins, dydx(i.tema_bin vaza_jato corrupcao_vaza_jato_filled) post
outreg2 using "E:\artigo3\logit_marg_trafico_VJ_2.xls", append ctitle(Logit_corrupcao_Marg) keep(i.tema_bin vaza_jato corrupcao_vaza_jato_filled) label addtext(Type of Crime FE, YES, Subject FE, YES, Judicial District FE, NO , Year Trend, YES)

logit resultado classe_bin i.ano vaza_jato i.tema_bin i.comarca_bin i.assunto_bin corrupcao_vaza_jato_filled, rob
margins, dydx(i.tema_bin vaza_jato corrupcao_vaza_jato_filled) post
outreg2 using "E:\artigo3\logit_marg_trafico_VJ_2.xls", append ctitle(Logit_corrupcao_Marg) keep(i.tema_bin vaza_jato corrupcao_vaza_jato_filled) label addtext(Type of Crime FE, YES, Subject FE, YES, Judicial District FE, YES , Year Trend, NO)

logit resultado classe_bin i.ano vaza_jato i.tema_bin i.comarca_bin i.assunto_bin corrupcao_vaza_jato_filled, rob
margins, dydx(i.tema_bin vaza_jato corrupcao_vaza_jato_filled) post
outreg2 using "E:\artigo3\logit_marg_trafico_VJ_2.xls", append ctitle(Logit_corrupcao_Marg) keep(i.tema_bin vaza_jato corrupcao_vaza_jato_filled) label addtext(Type of Crime FE, YES, Subject FE, YES, Judicial District FE, YES , Year Trend, YES)

*------------------- regressao Logit Resultados (acordo = Condenado) -------------------* 

clear
import delimited E:\artigo3\dados_logit_crime_VJ_final_2.csv, encoding(utf8)
set matsize 10000

encode tema, generate(tema_bin)
encode comarca, generate(comarca_bin)
encode assunto, generate(assunto_bin)
encode periodo_ajustado, generate(periodo_ajustado_bin)
encode classe, generate(classe_bin)

logit resultado classe_bin i.ano vaza_jato i.comarca_bin i.assunto_bin corrupcao_vaza_jato_filled, rob
margins, dydx(vaza_jato corrupcao_vaza_jato_filled) post
outreg2 using "E:\artigo3\logit_marg_crime_VJ_2.xls", replace ctitle(Logit_corrupcao_Marg) keep(i.tema_bin vaza_jato corrupcao_vaza_jato_filled) label addtext(Type of Crime FE, NO, Subject FE, YES, Judicial District FE, YES , Year Trend, YES)

logit resultado classe_bin i.ano vaza_jato i.tema_bin i.comarca_bin corrupcao_vaza_jato_filled, rob
margins, dydx(i.tema_bin vaza_jato corrupcao_vaza_jato_filled) post
outreg2 using "E:\artigo3\logit_marg_crime_VJ_2.xls", append ctitle(Logit_corrupcao_Marg) keep(i.tema_bin vaza_jato corrupcao_vaza_jato_filled) label addtext(Type of Crime FE, YES, Subject FE, NO, Judicial District FE, YES , Year Trend, YES)

logit resultado classe_bin i.ano vaza_jato i.tema_bin i.assunto_bin corrupcao_vaza_jato_filled, rob
margins, dydx(i.tema_bin vaza_jato corrupcao_vaza_jato_filled) post
outreg2 using "E:\artigo3\logit_marg_crime_VJ_2.xls", append ctitle(Logit_corrupcao_Marg) keep(i.tema_bin vaza_jato corrupcao_vaza_jato_filled) label addtext(Type of Crime FE, YES, Subject FE, YES, Judicial District FE, NO , Year Trend, YES)

logit resultado classe_bin i.ano vaza_jato i.tema_bin i.comarca_bin i.assunto_bin corrupcao_vaza_jato_filled, rob
margins, dydx(i.tema_bin vaza_jato corrupcao_vaza_jato_filled) post
outreg2 using "E:\artigo3\logit_marg_crime_VJ_2.xls", append ctitle(Logit_corrupcao_Marg) keep(i.tema_bin vaza_jato corrupcao_vaza_jato_filled) label addtext(Type of Crime FE, YES, Subject FE, YES, Judicial District FE, YES , Year Trend, NO)

logit resultado classe_bin i.ano vaza_jato i.tema_bin i.comarca_bin i.assunto_bin corrupcao_vaza_jato_filled, rob
margins, dydx(i.tema_bin vaza_jato corrupcao_vaza_jato_filled) post
outreg2 using "E:\artigo3\logit_marg_crime_VJ_2.xls", append ctitle(Logit_corrupcao_Marg) keep(i.tema_bin vaza_jato corrupcao_vaza_jato_filled) label addtext(Type of Crime FE, YES, Subject FE, YES, Judicial District FE, YES , Year Trend, YES)

*------------------- regressao Logit Resultados (acordo = Condenado) -------------------* 

clear
import delimited E:\artigo3\dados_logit_VJ_final_2.csv, encoding(utf8)
set matsize 10000

encode tema, generate(tema_bin)
encode comarca, generate(comarca_bin)
encode assunto, generate(assunto_bin)
encode periodo_ajustado, generate(periodo_ajustado_bin)
encode classe, generate(classe_bin)

logit resultado classe_bin ano vaza_jato i.comarca_bin i.assunto_bin corrupcao_vaza_jato_filled, rob
margins, dydx(ano vaza_jato corrupcao_vaza_jato_filled) post
outreg2 using "E:\artigo3\logit_marg_VJ.xls", replace ctitle(Logit_corrupcao_Marg) keep(ano i.tema_bin vaza_jato corrupcao_vaza_jato_filled) label addtext(Type of Crime FE, NO, Subject FE, YES, Judicial District FE, YES , Year Trend, YES)

logit resultado classe_bin ano vaza_jato i.tema_bin i.comarca_bin corrupcao_vaza_jato_filled, rob
margins, dydx(ano i.tema_bin vaza_jato corrupcao_vaza_jato_filled) post
outreg2 using "E:\artigo3\logit_marg_VJ.xls", append ctitle(Logit_corrupcao_Marg) keep(ano i.tema_bin vaza_jato corrupcao_vaza_jato_filled) label addtext(Type of Crime FE, YES, Subject FE, NO, Judicial District FE, YES , Year Trend, YES)

logit resultado classe_bin ano vaza_jato i.tema_bin i.assunto_bin corrupcao_vaza_jato_filled, rob
margins, dydx(ano i.tema_bin vaza_jato corrupcao_vaza_jato_filled) post
outreg2 using "E:\artigo3\logit_marg_VJ.xls", append ctitle(Logit_corrupcao_Marg) keep(ano i.tema_bin vaza_jato corrupcao_vaza_jato_filled) label addtext(Type of Crime FE, YES, Subject FE, YES, Judicial District FE, NO , Year Trend, YES)

logit resultado classe_bin ano vaza_jato i.tema_bin i.comarca_bin i.assunto_bin corrupcao_vaza_jato_filled, rob
margins, dydx(ano i.tema_bin vaza_jato corrupcao_vaza_jato_filled) post
outreg2 using "E:\artigo3\logit_marg_VJ.xls", append ctitle(Logit_corrupcao_Marg) keep(ano i.tema_bin vaza_jato corrupcao_vaza_jato_filled) label addtext(Type of Crime FE, YES, Subject FE, YES, Judicial District FE, YES , Year Trend, NO)

logit resultado classe_bin ano vaza_jato i.tema_bin i.comarca_bin i.assunto_bin corrupcao_vaza_jato_filled, rob
margins, dydx(ano i.tema_bin vaza_jato corrupcao_vaza_jato_filled) post
outreg2 using "E:\artigo3\logit_marg_VJ.xls", append ctitle(Logit_corrupcao_Marg) keep(ano i.tema_bin vaza_jato corrupcao_vaza_jato_filled) label addtext(Type of Crime FE, YES, Subject FE, YES, Judicial District FE, YES , Year Trend, YES)

*------------------- regressao Logit Resultados (acordo = Condenado) -------------------* 

clear
import delimited E:\artigo3\dados_logit_trafico_VJ_final_2.csv, encoding(utf8)
set matsize 10000

encode tema, generate(tema_bin)
encode comarca, generate(comarca_bin)
encode assunto, generate(assunto_bin)
encode periodo_ajustado, generate(periodo_ajustado_bin)
encode classe, generate(classe_bin)

logit resultado classe_bin ano vaza_jato i.comarca_bin i.assunto_bin corrupcao_vaza_jato_filled, rob
margins, dydx(ano vaza_jato corrupcao_vaza_jato_filled) post
outreg2 using "E:\artigo3\logit_marg_trafico_VJ.xls", replace ctitle(Logit_corrupcao_Marg) keep(ano i.tema_bin vaza_jato corrupcao_vaza_jato_filled) label addtext(Type of Crime FE, NO, Subject FE, YES, Judicial District FE, YES , Year Trend, YES)

logit resultado classe_bin ano vaza_jato i.tema_bin i.comarca_bin corrupcao_vaza_jato_filled, rob
margins, dydx(ano i.tema_bin vaza_jato corrupcao_vaza_jato_filled) post
outreg2 using "E:\artigo3\logit_marg_trafico_VJ.xls", append ctitle(Logit_corrupcao_Marg) keep(ano i.tema_bin vaza_jato corrupcao_vaza_jato_filled) label addtext(Type of Crime FE, YES, Subject FE, NO, Judicial District FE, YES , Year Trend, YES)

logit resultado classe_bin ano vaza_jato i.tema_bin i.assunto_bin corrupcao_vaza_jato_filled, rob
margins, dydx(ano i.tema_bin vaza_jato corrupcao_vaza_jato_filled) post
outreg2 using "E:\artigo3\logit_marg_trafico_VJ.xls", append ctitle(Logit_corrupcao_Marg) keep(ano i.tema_bin vaza_jato corrupcao_vaza_jato_filled) label addtext(Type of Crime FE, YES, Subject FE, YES, Judicial District FE, NO , Year Trend, YES)

logit resultado classe_bin ano vaza_jato i.tema_bin i.comarca_bin i.assunto_bin corrupcao_vaza_jato_filled, rob
margins, dydx(ano i.tema_bin vaza_jato corrupcao_vaza_jato_filled) post
outreg2 using "E:\artigo3\logit_marg_trafico_VJ.xls", append ctitle(Logit_corrupcao_Marg) keep(ano i.tema_bin vaza_jato corrupcao_vaza_jato_filled) label addtext(Type of Crime FE, YES, Subject FE, YES, Judicial District FE, YES , Year Trend, NO)

logit resultado classe_bin ano vaza_jato i.tema_bin i.comarca_bin i.assunto_bin corrupcao_vaza_jato_filled, rob
margins, dydx(ano i.tema_bin vaza_jato corrupcao_vaza_jato_filled) post
outreg2 using "E:\artigo3\logit_marg_trafico_VJ.xls", append ctitle(Logit_corrupcao_Marg) keep(ano i.tema_bin vaza_jato corrupcao_vaza_jato_filled) label addtext(Type of Crime FE, YES, Subject FE, YES, Judicial District FE, YES , Year Trend, YES)

*------------------- regressao Logit Resultados (acordo = Condenado) -------------------* 

clear
import delimited E:\artigo3\dados_logit_crime_VJ_final_2.csv, encoding(utf8)
set matsize 10000

encode tema, generate(tema_bin)
encode comarca, generate(comarca_bin)
encode assunto, generate(assunto_bin)
encode periodo_ajustado, generate(periodo_ajustado_bin)
encode classe, generate(classe_bin)

logit resultado classe_bin ano vaza_jato i.comarca_bin i.assunto_bin corrupcao_vaza_jato_filled, rob
margins, dydx(ano vaza_jato corrupcao_vaza_jato_filled) post
outreg2 using "E:\artigo3\logit_marg_crime_VJ.xls", replace ctitle(Logit_corrupcao_Marg) keep(ano i.tema_bin vaza_jato corrupcao_vaza_jato_filled) label addtext(Type of Crime FE, NO, Subject FE, YES, Judicial District FE, YES , Year Trend, YES)

logit resultado classe_bin ano vaza_jato i.tema_bin i.comarca_bin corrupcao_vaza_jato_filled, rob
margins, dydx(ano i.tema_bin vaza_jato corrupcao_vaza_jato_filled) post
outreg2 using "E:\artigo3\logit_marg_crime_VJ.xls", append ctitle(Logit_corrupcao_Marg) keep(ano i.tema_bin vaza_jato corrupcao_vaza_jato_filled) label addtext(Type of Crime FE, YES, Subject FE, NO, Judicial District FE, YES , Year Trend, YES)

logit resultado classe_bin ano vaza_jato i.tema_bin i.assunto_bin corrupcao_vaza_jato_filled, rob
margins, dydx(ano i.tema_bin vaza_jato corrupcao_vaza_jato_filled) post
outreg2 using "E:\artigo3\logit_marg_crime_VJ.xls", append ctitle(Logit_corrupcao_Marg) keep(ano i.tema_bin vaza_jato corrupcao_vaza_jato_filled) label addtext(Type of Crime FE, YES, Subject FE, YES, Judicial District FE, NO , Year Trend, YES)

logit resultado classe_bin ano vaza_jato i.tema_bin i.comarca_bin i.assunto_bin corrupcao_vaza_jato_filled, rob
margins, dydx(ano i.tema_bin vaza_jato corrupcao_vaza_jato_filled) post
outreg2 using "E:\artigo3\logit_marg_crime_VJ.xls", append ctitle(Logit_corrupcao_Marg) keep(ano i.tema_bin vaza_jato corrupcao_vaza_jato_filled) label addtext(Type of Crime FE, YES, Subject FE, YES, Judicial District FE, YES , Year Trend, NO)

logit resultado classe_bin ano vaza_jato i.tema_bin i.comarca_bin i.assunto_bin corrupcao_vaza_jato_filled, rob
margins, dydx(ano i.tema_bin vaza_jato corrupcao_vaza_jato_filled) post
outreg2 using "E:\artigo3\logit_marg_crime_VJ.xls", append ctitle(Logit_corrupcao_Marg) keep(ano i.tema_bin vaza_jato corrupcao_vaza_jato_filled) label addtext(Type of Crime FE, YES, Subject FE, YES, Judicial District FE, YES , Year Trend, YES)


*----------------------------------------------------------------------------------* 
*-------------------      Logit Dinamico 1.5 Anos Lava Jato     -------------------* 
*----------------------------------------------------------------------------------*
 
*------------------- Regressao Logit Todos Grupos Efeito Fixo de Ano -------------------*
 
clear
import delimited E:\artigo3\dados_logit_VJ_final_2.csv, encoding(utf8)
set matsize 10000
set maxiter 1000

encode tema, generate(tema_bin)
encode comarca, generate(comarca_bin)
encode assunto, generate(assunto_bin)
encode periodo_ajustado, generate(periodo_ajustado_bin)
encode classe, generate(classe_bin)

logit resultado classe_bin i.ano i.comarca_bin i.assunto_bin vaza_jato_1 vaza_jato_2  vaza_jato_1_corrupcao vaza_jato_2_corrupcao, rob
margins, dydx(vaza_jato_1 vaza_jato_2  vaza_jato_1_corrupcao vaza_jato_2_corrupcao) post
outreg2 using "E:\artigo3\logit_marg_VJ_2.xls", replace ctitle(Logit_corrupcao_Marg) keep(i.tema_bin vaza_jato_1 vaza_jato_2  vaza_jato_1_corrupcao vaza_jato_2_corrupcao) label addtext(Type of Crime FE, NO, Subject FE, YES, Judicial District FE, YES , Year Trend, YES)

logit resultado classe_bin i.ano i.tema_bin i.comarca_bin vaza_jato_1 vaza_jato_2  vaza_jato_1_corrupcao vaza_jato_2_corrupcao, rob
margins, dydx(i.tema_bin vaza_jato_1 vaza_jato_2  vaza_jato_1_corrupcao vaza_jato_2_corrupcao) post
outreg2 using "E:\artigo3\logit_marg_VJ_2.xls", append ctitle(Logit_corrupcao_Marg) keep(i.tema_bin vaza_jato_1 vaza_jato_2  vaza_jato_1_corrupcao vaza_jato_2_corrupcao) label addtext(Type of Crime FE, YES, Subject FE, NO, Judicial District FE, YES , Year Trend, YES)

logit resultado classe_bin i.ano i.tema_bin i.assunto_bin vaza_jato_1 vaza_jato_2  vaza_jato_1_corrupcao vaza_jato_2_corrupcao, rob
margins, dydx(i.tema_bin vaza_jato_1 vaza_jato_2  vaza_jato_1_corrupcao vaza_jato_2_corrupcao) post
outreg2 using "E:\artigo3\logit_marg_VJ_2.xls", append ctitle(Logit_corrupcao_Marg) keep(i.tema_bin vaza_jato_1 vaza_jato_2  vaza_jato_1_corrupcao vaza_jato_2_corrupcao) label addtext(Type of Crime FE, YES, Subject FE, YES, Judicial District FE, NO , Year Trend, YES)

logit resultado classe_bin i.ano i.tema_bin i.comarca_bin i.assunto_bin vaza_jato_1 vaza_jato_2  vaza_jato_1_corrupcao vaza_jato_2_corrupcao, rob
margins, dydx(i.tema_bin vaza_jato_1 vaza_jato_2  vaza_jato_1_corrupcao vaza_jato_2_corrupcao) post
outreg2 using "E:\artigo3\logit_marg_VJ_2.xls", append ctitle(Logit_corrupcao_Marg) keep(i.tema_bin vaza_jato_1 vaza_jato_2  vaza_jato_1_corrupcao vaza_jato_2_corrupcao) label addtext(Type of Crime FE, YES, Subject FE, YES, Judicial District FE, YES , Year Trend, NO)

logit resultado classe_bin i.ano i.tema_bin i.comarca_bin i.assunto_bin vaza_jato_1 vaza_jato_2  vaza_jato_1_corrupcao vaza_jato_2_corrupcao, rob
margins, dydx(i.tema_bin vaza_jato_1 vaza_jato_2  vaza_jato_1_corrupcao vaza_jato_2_corrupcao) post
outreg2 using "E:\artigo3\logit_marg_VJ_2.xls", append ctitle(Logit_corrupcao_Marg) keep(i.tema_bin vaza_jato_1 vaza_jato_2  vaza_jato_1_corrupcao vaza_jato_2_corrupcao) label addtext(Type of Crime FE, YES, Subject FE, YES, Judicial District FE, YES , Year Trend, YES)

*------------------- Regressao Logit Trafico Efeito Fixo de Ano -------------------* 

clear
import delimited E:\artigo3\dados_logit_trafico_VJ_final_2.csv, encoding(utf8)
set matsize 10000

encode tema, generate(tema_bin)
encode comarca, generate(comarca_bin)
encode assunto, generate(assunto_bin)
encode periodo_ajustado, generate(periodo_ajustado_bin)
encode classe, generate(classe_bin)

logit resultado classe_bin i.ano i.comarca_bin i.assunto_bin vaza_jato_1 vaza_jato_2  vaza_jato_1_corrupcao vaza_jato_2_corrupcao, rob
margins, dydx(vaza_jato_1 vaza_jato_2  vaza_jato_1_corrupcao vaza_jato_2_corrupcao) post
outreg2 using "E:\artigo3\logit_marg_trafico_VJ_2.xls", replace ctitle(Logit_corrupcao_Marg) keep(i.tema_bin vaza_jato_1 vaza_jato_2  vaza_jato_1_corrupcao vaza_jato_2_corrupcao) label addtext(Type of Crime FE, NO, Subject FE, YES, Judicial District FE, YES , Year Trend, YES)

logit resultado classe_bin i.ano i.tema_bin i.comarca_bin vaza_jato_1 vaza_jato_2  vaza_jato_1_corrupcao vaza_jato_2_corrupcao, rob
margins, dydx(i.tema_bin vaza_jato_1 vaza_jato_2  vaza_jato_1_corrupcao vaza_jato_2_corrupcao) post
outreg2 using "E:\artigo3\logit_marg_trafico_VJ_2.xls", append ctitle(Logit_corrupcao_Marg) keep(i.tema_bin vaza_jato_1 vaza_jato_2  vaza_jato_1_corrupcao vaza_jato_2_corrupcao) label addtext(Type of Crime FE, YES, Subject FE, NO, Judicial District FE, YES , Year Trend, YES)

logit resultado classe_bin i.ano i.tema_bin i.assunto_bin vaza_jato_1 vaza_jato_2  vaza_jato_1_corrupcao vaza_jato_2_corrupcao, rob
margins, dydx(i.tema_bin vaza_jato_1 vaza_jato_2  vaza_jato_1_corrupcao vaza_jato_2_corrupcao) post
outreg2 using "E:\artigo3\logit_marg_trafico_VJ_2.xls", append ctitle(Logit_corrupcao_Marg) keep(i.tema_bin vaza_jato_1 vaza_jato_2  vaza_jato_1_corrupcao vaza_jato_2_corrupcao) label addtext(Type of Crime FE, YES, Subject FE, YES, Judicial District FE, NO , Year Trend, YES)

logit resultado classe_bin i.ano i.tema_bin i.comarca_bin i.assunto_bin vaza_jato_1 vaza_jato_2  vaza_jato_1_corrupcao vaza_jato_2_corrupcao, rob
margins, dydx(i.tema_bin vaza_jato_1 vaza_jato_2  vaza_jato_1_corrupcao vaza_jato_2_corrupcao) post
outreg2 using "E:\artigo3\logit_marg_trafico_VJ_2.xls", append ctitle(Logit_corrupcao_Marg) keep(i.tema_bin vaza_jato_1 vaza_jato_2  vaza_jato_1_corrupcao vaza_jato_2_corrupcao) label addtext(Type of Crime FE, YES, Subject FE, YES, Judicial District FE, YES , Year Trend, NO)

logit resultado classe_bin i.ano i.tema_bin i.comarca_bin i.assunto_bin vaza_jato_1 vaza_jato_2  vaza_jato_1_corrupcao vaza_jato_2_corrupcao, rob
margins, dydx(i.tema_bin vaza_jato_1 vaza_jato_2  vaza_jato_1_corrupcao vaza_jato_2_corrupcao) post
outreg2 using "E:\artigo3\logit_marg_trafico_VJ_2.xls", append ctitle(Logit_corrupcao_Marg) keep(i.tema_bin vaza_jato_1 vaza_jato_2  vaza_jato_1_corrupcao vaza_jato_2_corrupcao) label addtext(Type of Crime FE, YES, Subject FE, YES, Judicial District FE, YES , Year Trend, YES)

*------------------- Regressao Logit Outros Crimes Efeito Fixo de Ano -------------------* 

clear
import delimited E:\artigo3\dados_logit_crime_VJ_final_2.csv, encoding(utf8)
set matsize 10000

encode tema, generate(tema_bin)
encode comarca, generate(comarca_bin)
encode assunto, generate(assunto_bin)
encode periodo_ajustado, generate(periodo_ajustado_bin)
encode classe, generate(classe_bin)

logit resultado classe_bin i.ano i.comarca_bin i.assunto_bin vaza_jato_1 vaza_jato_2  vaza_jato_1_corrupcao vaza_jato_2_corrupcao, rob
margins, dydx(vaza_jato_1 vaza_jato_2  vaza_jato_1_corrupcao vaza_jato_2_corrupcao) post
outreg2 using "E:\artigo3\logit_marg_crime_VJ_2.xls", replace ctitle(Logit_corrupcao_Marg) keep(i.tema_bin vaza_jato_1 vaza_jato_2  vaza_jato_1_corrupcao vaza_jato_2_corrupcao) label addtext(Type of Crime FE, NO, Subject FE, YES, Judicial District FE, YES , Year Trend, YES)

logit resultado classe_bin i.ano i.tema_bin i.comarca_bin vaza_jato_1 vaza_jato_2  vaza_jato_1_corrupcao vaza_jato_2_corrupcao, rob
margins, dydx(i.tema_bin vaza_jato_1 vaza_jato_2  vaza_jato_1_corrupcao vaza_jato_2_corrupcao) post
outreg2 using "E:\artigo3\logit_marg_crime_VJ_2.xls", append ctitle(Logit_corrupcao_Marg) keep(i.tema_bin vaza_jato_1 vaza_jato_2  vaza_jato_1_corrupcao vaza_jato_2_corrupcao) label addtext(Type of Crime FE, YES, Subject FE, NO, Judicial District FE, YES , Year Trend, YES)

logit resultado classe_bin i.ano i.tema_bin i.assunto_bin vaza_jato_1 vaza_jato_2  vaza_jato_1_corrupcao vaza_jato_2_corrupcao, rob
margins, dydx(i.tema_bin vaza_jato_1 vaza_jato_2  vaza_jato_1_corrupcao vaza_jato_2_corrupcao) post
outreg2 using "E:\artigo3\logit_marg_crime_VJ_2.xls", append ctitle(Logit_corrupcao_Marg) keep(i.tema_bin vaza_jato_1 vaza_jato_2  vaza_jato_1_corrupcao vaza_jato_2_corrupcao) label addtext(Type of Crime FE, YES, Subject FE, YES, Judicial District FE, NO , Year Trend, YES)

logit resultado classe_bin i.ano i.tema_bin i.comarca_bin i.assunto_bin vaza_jato_1 vaza_jato_2  vaza_jato_1_corrupcao vaza_jato_2_corrupcao, rob
margins, dydx(i.tema_bin vaza_jato_1 vaza_jato_2  vaza_jato_1_corrupcao vaza_jato_2_corrupcao) post
outreg2 using "E:\artigo3\logit_marg_crime_VJ_2.xls", append ctitle(Logit_corrupcao_Marg) keep(i.tema_bin vaza_jato_1 vaza_jato_2  vaza_jato_1_corrupcao vaza_jato_2_corrupcao) label addtext(Type of Crime FE, YES, Subject FE, YES, Judicial District FE, YES , Year Trend, NO)

logit resultado classe_bin i.ano i.tema_bin i.comarca_bin i.assunto_bin vaza_jato_1 vaza_jato_2  vaza_jato_1_corrupcao vaza_jato_2_corrupcao, rob
margins, dydx(i.tema_bin vaza_jato_1 vaza_jato_2  vaza_jato_1_corrupcao vaza_jato_2_corrupcao) post
outreg2 using "E:\artigo3\logit_marg_crime_VJ_2.xls", append ctitle(Logit_corrupcao_Marg) keep(i.tema_bin vaza_jato_1 vaza_jato_2  vaza_jato_1_corrupcao vaza_jato_2_corrupcao) label addtext(Type of Crime FE, YES, Subject FE, YES, Judicial District FE, YES , Year Trend, YES)

*------------------- Regressao Logit Todos Grupos Trend de Ano -------------------* 

clear
import delimited E:\artigo3\dados_logit_VJ_final_2.csv, encoding(utf8)
set matsize 10000

encode tema, generate(tema_bin)
encode comarca, generate(comarca_bin)
encode assunto, generate(assunto_bin)
encode periodo_ajustado, generate(periodo_ajustado_bin)
encode classe, generate(classe_bin)

logit resultado classe_bin ano i.comarca_bin i.assunto_bin vaza_jato_1 vaza_jato_2  vaza_jato_1_corrupcao vaza_jato_2_corrupcao, rob
margins, dydx(ano vaza_jato_1 vaza_jato_2  vaza_jato_1_corrupcao vaza_jato_2_corrupcao) post
outreg2 using "E:\artigo3\logit_marg_VJ.xls", replace ctitle(Logit_corrupcao_Marg) keep(ano i.tema_bin vaza_jato_1 vaza_jato_2  vaza_jato_1_corrupcao vaza_jato_2_corrupcao) label addtext(Type of Crime FE, NO, Subject FE, YES, Judicial District FE, YES , Year Trend, YES)

logit resultado classe_bin ano i.tema_bin i.comarca_bin vaza_jato_1 vaza_jato_2  vaza_jato_1_corrupcao vaza_jato_2_corrupcao, rob
margins, dydx(ano i.tema_bin vaza_jato_1 vaza_jato_2  vaza_jato_1_corrupcao vaza_jato_2_corrupcao) post
outreg2 using "E:\artigo3\logit_marg_VJ.xls", append ctitle(Logit_corrupcao_Marg) keep(ano i.tema_bin vaza_jato_1 vaza_jato_2  vaza_jato_1_corrupcao vaza_jato_2_corrupcao) label addtext(Type of Crime FE, YES, Subject FE, NO, Judicial District FE, YES , Year Trend, YES)

logit resultado classe_bin ano i.tema_bin i.assunto_bin vaza_jato_1 vaza_jato_2  vaza_jato_1_corrupcao vaza_jato_2_corrupcao, rob
margins, dydx(ano i.tema_bin vaza_jato_1 vaza_jato_2  vaza_jato_1_corrupcao vaza_jato_2_corrupcao) post
outreg2 using "E:\artigo3\logit_marg_VJ.xls", append ctitle(Logit_corrupcao_Marg) keep(ano i.tema_bin vaza_jato_1 vaza_jato_2  vaza_jato_1_corrupcao vaza_jato_2_corrupcao) label addtext(Type of Crime FE, YES, Subject FE, YES, Judicial District FE, NO , Year Trend, YES)

logit resultado classe_bin ano i.tema_bin i.comarca_bin i.assunto_bin vaza_jato_1 vaza_jato_2  vaza_jato_1_corrupcao vaza_jato_2_corrupcao, rob
margins, dydx(ano i.tema_bin vaza_jato_1 vaza_jato_2  vaza_jato_1_corrupcao vaza_jato_2_corrupcao) post
outreg2 using "E:\artigo3\logit_marg_VJ.xls", append ctitle(Logit_corrupcao_Marg) keep(ano i.tema_bin vaza_jato_1 vaza_jato_2  vaza_jato_1_corrupcao vaza_jato_2_corrupcao) label addtext(Type of Crime FE, YES, Subject FE, YES, Judicial District FE, YES , Year Trend, NO)

logit resultado classe_bin ano i.tema_bin i.comarca_bin i.assunto_bin vaza_jato_1 vaza_jato_2  vaza_jato_1_corrupcao vaza_jato_2_corrupcao, rob
margins, dydx(ano i.tema_bin vaza_jato_1 vaza_jato_2  vaza_jato_1_corrupcao vaza_jato_2_corrupcao) post
outreg2 using "E:\artigo3\logit_marg_VJ.xls", append ctitle(Logit_corrupcao_Marg) keep(ano i.tema_bin vaza_jato_1 vaza_jato_2  vaza_jato_1_corrupcao vaza_jato_2_corrupcao) label addtext(Type of Crime FE, YES, Subject FE, YES, Judicial District FE, YES , Year Trend, YES)

*------------------- Regressao Logit Trafico Trend de Ano -------------------* 

clear
import delimited E:\artigo3\dados_logit_trafico_VJ_final_2.csv, encoding(utf8)
set matsize 10000

encode tema, generate(tema_bin)
encode comarca, generate(comarca_bin)
encode assunto, generate(assunto_bin)
encode periodo_ajustado, generate(periodo_ajustado_bin)
encode classe, generate(classe_bin)

logit resultado classe_bin ano i.comarca_bin i.assunto_bin vaza_jato_1 vaza_jato_2  vaza_jato_1_corrupcao vaza_jato_2_corrupcao, rob
margins, dydx(ano vaza_jato_1 vaza_jato_2  vaza_jato_1_corrupcao vaza_jato_2_corrupcao) post
outreg2 using "E:\artigo3\logit_marg_trafico_VJ.xls", replace ctitle(Logit_corrupcao_Marg) keep(ano i.tema_bin vaza_jato_1 vaza_jato_2  vaza_jato_1_corrupcao vaza_jato_2_corrupcao) label addtext(Type of Crime FE, NO, Subject FE, YES, Judicial District FE, YES , Year Trend, YES)

logit resultado classe_bin ano i.tema_bin i.comarca_bin vaza_jato_1 vaza_jato_2  vaza_jato_1_corrupcao vaza_jato_2_corrupcao, rob
margins, dydx(ano i.tema_bin vaza_jato_1 vaza_jato_2  vaza_jato_1_corrupcao vaza_jato_2_corrupcao) post
outreg2 using "E:\artigo3\logit_marg_trafico_VJ.xls", append ctitle(Logit_corrupcao_Marg) keep(ano i.tema_bin vaza_jato_1 vaza_jato_2  vaza_jato_1_corrupcao vaza_jato_2_corrupcao) label addtext(Type of Crime FE, YES, Subject FE, NO, Judicial District FE, YES , Year Trend, YES)

logit resultado classe_bin ano i.tema_bin i.assunto_bin vaza_jato_1 vaza_jato_2  vaza_jato_1_corrupcao vaza_jato_2_corrupcao, rob
margins, dydx(ano i.tema_bin vaza_jato_1 vaza_jato_2  vaza_jato_1_corrupcao vaza_jato_2_corrupcao) post
outreg2 using "E:\artigo3\logit_marg_trafico_VJ.xls", append ctitle(Logit_corrupcao_Marg) keep(ano i.tema_bin vaza_jato_1 vaza_jato_2  vaza_jato_1_corrupcao vaza_jato_2_corrupcao) label addtext(Type of Crime FE, YES, Subject FE, YES, Judicial District FE, NO , Year Trend, YES)

logit resultado classe_bin ano i.tema_bin i.comarca_bin i.assunto_bin vaza_jato_1 vaza_jato_2  vaza_jato_1_corrupcao vaza_jato_2_corrupcao, rob
margins, dydx(ano i.tema_bin vaza_jato_1 vaza_jato_2  vaza_jato_1_corrupcao vaza_jato_2_corrupcao) post
outreg2 using "E:\artigo3\logit_marg_trafico_VJ.xls", append ctitle(Logit_corrupcao_Marg) keep(ano i.tema_bin vaza_jato_1 vaza_jato_2  vaza_jato_1_corrupcao vaza_jato_2_corrupcao) label addtext(Type of Crime FE, YES, Subject FE, YES, Judicial District FE, YES , Year Trend, NO)

logit resultado classe_bin ano i.tema_bin i.comarca_bin i.assunto_bin vaza_jato_1 vaza_jato_2  vaza_jato_1_corrupcao vaza_jato_2_corrupcao, rob
margins, dydx(ano i.tema_bin vaza_jato_1 vaza_jato_2  vaza_jato_1_corrupcao vaza_jato_2_corrupcao) post
outreg2 using "E:\artigo3\logit_marg_trafico_VJ.xls", append ctitle(Logit_corrupcao_Marg) keep(ano i.tema_bin vaza_jato_1 vaza_jato_2  vaza_jato_1_corrupcao vaza_jato_2_corrupcao) label addtext(Type of Crime FE, YES, Subject FE, YES, Judicial District FE, YES , Year Trend, YES)

*------------------- Regressao Logit Outros Crimes Trend de Ano -------------------* 

clear
import delimited E:\artigo3\dados_logit_crime_VJ_final_2.csv, encoding(utf8)
set matsize 10000

encode tema, generate(tema_bin)
encode comarca, generate(comarca_bin)
encode assunto, generate(assunto_bin)
encode periodo_ajustado, generate(periodo_ajustado_bin)
encode classe, generate(classe_bin)

logit resultado classe_bin ano i.comarca_bin i.assunto_bin vaza_jato_1 vaza_jato_2  vaza_jato_1_corrupcao vaza_jato_2_corrupcao, rob
margins, dydx(ano vaza_jato_1 vaza_jato_2  vaza_jato_1_corrupcao vaza_jato_2_corrupcao) post
outreg2 using "E:\artigo3\logit_marg_crime_VJ.xls", replace ctitle(Logit_corrupcao_Marg) keep(ano i.tema_bin vaza_jato_1 vaza_jato_2  vaza_jato_1_corrupcao vaza_jato_2_corrupcao) label addtext(Type of Crime FE, NO, Subject FE, YES, Judicial District FE, YES , Year Trend, YES)

logit resultado classe_bin ano i.tema_bin i.comarca_bin vaza_jato_1 vaza_jato_2  vaza_jato_1_corrupcao vaza_jato_2_corrupcao, rob
margins, dydx(ano i.tema_bin vaza_jato_1 vaza_jato_2  vaza_jato_1_corrupcao vaza_jato_2_corrupcao) post
outreg2 using "E:\artigo3\logit_marg_crime_VJ.xls", append ctitle(Logit_corrupcao_Marg) keep(ano i.tema_bin vaza_jato_1 vaza_jato_2  vaza_jato_1_corrupcao vaza_jato_2_corrupcao) label addtext(Type of Crime FE, YES, Subject FE, NO, Judicial District FE, YES , Year Trend, YES)

logit resultado classe_bin ano i.tema_bin i.assunto_bin vaza_jato_1 vaza_jato_2  vaza_jato_1_corrupcao vaza_jato_2_corrupcao, rob
margins, dydx(ano i.tema_bin vaza_jato_1 vaza_jato_2  vaza_jato_1_corrupcao vaza_jato_2_corrupcao) post
outreg2 using "E:\artigo3\logit_marg_crime_VJ.xls", append ctitle(Logit_corrupcao_Marg) keep(ano i.tema_bin vaza_jato_1 vaza_jato_2  vaza_jato_1_corrupcao vaza_jato_2_corrupcao) label addtext(Type of Crime FE, YES, Subject FE, YES, Judicial District FE, NO , Year Trend, YES)

logit resultado classe_bin ano i.tema_bin i.comarca_bin i.assunto_bin vaza_jato_1 vaza_jato_2  vaza_jato_1_corrupcao vaza_jato_2_corrupcao, rob
margins, dydx(ano i.tema_bin vaza_jato_1 vaza_jato_2  vaza_jato_1_corrupcao vaza_jato_2_corrupcao) post
outreg2 using "E:\artigo3\logit_marg_crime_VJ.xls", append ctitle(Logit_corrupcao_Marg) keep(ano i.tema_bin vaza_jato_1 vaza_jato_2  vaza_jato_1_corrupcao vaza_jato_2_corrupcao) label addtext(Type of Crime FE, YES, Subject FE, YES, Judicial District FE, YES , Year Trend, NO)

logit resultado classe_bin ano i.tema_bin i.comarca_bin i.assunto_bin vaza_jato_1 vaza_jato_2  vaza_jato_1_corrupcao vaza_jato_2_corrupcao, rob
margins, dydx(ano i.tema_bin vaza_jato_1 vaza_jato_2  vaza_jato_1_corrupcao vaza_jato_2_corrupcao) post
outreg2 using "E:\artigo3\logit_marg_crime_VJ.xls", append ctitle(Logit_corrupcao_Marg) keep(ano i.tema_bin vaza_jato_1 vaza_jato_2  vaza_jato_1_corrupcao vaza_jato_2_corrupcao) label addtext(Type of Crime FE, YES, Subject FE, YES, Judicial District FE, YES , Year Trend, YES)

 