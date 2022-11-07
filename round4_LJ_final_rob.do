*----------------------------------------------------------------------------------* 
*-------------------      Logit Fixo Período Todo Lava Jato     -------------------* 
*----------------------------------------------------------------------------------*

*------------------- Regressao Logit Todos Grupos Efeito Fixo de Ano -------------------* 

clear
import delimited E:\artigo3\dados_logit_LJ_final_2.csv, encoding(utf8)
set matsize 10000

encode tema, generate(tema_bin)
encode comarca, generate(comarca_bin)
encode assunto, generate(assunto_bin)
encode periodo_ajustado, generate(periodo_ajustado_bin)

logit resultado_rob i.ano lava_jato i.comarca_bin i.assunto_bin corrupcao_lava_jato_filled , rob
margins, dydx(lava_jato corrupcao_lava_jato_filled ) post
outreg2 using "E:\artigo3\logit_marg_LJ_2.xls", replace ctitle(Logit_corrupcao_Marg) keep(i.tema_bin lava_jato corrupcao_lava_jato_filled ) label addtext(Type of Crime FE, NO, Subject FE, YES, Judicial District FE, YES , Year Trend, YES)

logit resultado_rob i.ano lava_jato i.tema_bin i.comarca_bin corrupcao_lava_jato_filled , rob
margins, dydx(i.tema_bin lava_jato corrupcao_lava_jato_filled ) post
outreg2 using "E:\artigo3\logit_marg_LJ_2.xls", append ctitle(Logit_corrupcao_Marg) keep(i.tema_bin lava_jato corrupcao_lava_jato_filled ) label addtext(Type of Crime FE, YES, Subject FE, NO, Judicial District FE, YES , Year Trend, YES)

logit resultado_rob i.ano lava_jato i.tema_bin i.assunto_bin corrupcao_lava_jato_filled , rob
margins, dydx(i.tema_bin lava_jato corrupcao_lava_jato_filled ) post
outreg2 using "E:\artigo3\logit_marg_LJ_2.xls", append ctitle(Logit_corrupcao_Marg) keep(i.tema_bin lava_jato corrupcao_lava_jato_filled ) label addtext(Type of Crime FE, YES, Subject FE, YES, Judicial District FE, NO , Year Trend, YES)

logit resultado_rob i.ano lava_jato i.tema_bin i.comarca_bin i.assunto_bin corrupcao_lava_jato_filled , rob
margins, dydx(i.tema_bin lava_jato corrupcao_lava_jato_filled ) post
outreg2 using "E:\artigo3\logit_marg_LJ_2.xls", append ctitle(Logit_corrupcao_Marg) keep(i.tema_bin lava_jato corrupcao_lava_jato_filled ) label addtext(Type of Crime FE, YES, Subject FE, YES, Judicial District FE, YES , Year Trend, NO)

logit resultado_rob i.ano lava_jato i.tema_bin i.comarca_bin i.assunto_bin corrupcao_lava_jato_filled , rob
margins, dydx(i.tema_bin lava_jato corrupcao_lava_jato_filled ) post
outreg2 using "E:\artigo3\logit_marg_LJ_2.xls", append ctitle(Logit_corrupcao_Marg) keep(i.tema_bin lava_jato corrupcao_lava_jato_filled ) label addtext(Type of Crime FE, YES, Subject FE, YES, Judicial District FE, YES , Year Trend, YES)

*------------------- Regressao Logit Trafico Efeito Fixo de Ano -------------------* 

clear
import delimited E:\artigo3\dados_logit_trafico_LJ_final_2.csv, encoding(utf8)
set matsize 10000

encode tema, generate(tema_bin)
encode comarca, generate(comarca_bin)
encode assunto, generate(assunto_bin)
encode periodo_ajustado, generate(periodo_ajustado_bin)

logit resultado_rob i.ano lava_jato i.comarca_bin i.assunto_bin corrupcao_lava_jato_filled , rob
margins, dydx(lava_jato corrupcao_lava_jato_filled ) post
outreg2 using "E:\artigo3\logit_marg_trafico_LJ_2.xls", replace ctitle(Logit_corrupcao_Marg) keep(i.tema_bin lava_jato corrupcao_lava_jato_filled ) label addtext(Type of Crime FE, NO, Subject FE, YES, Judicial District FE, YES , Year Trend, YES)

logit resultado_rob i.ano lava_jato i.tema_bin i.comarca_bin corrupcao_lava_jato_filled , rob
margins, dydx(i.tema_bin lava_jato corrupcao_lava_jato_filled ) post
outreg2 using "E:\artigo3\logit_marg_trafico_LJ_2.xls", append ctitle(Logit_corrupcao_Marg) keep(i.tema_bin lava_jato corrupcao_lava_jato_filled ) label addtext(Type of Crime FE, YES, Subject FE, NO, Judicial District FE, YES , Year Trend, YES)

logit resultado_rob i.ano lava_jato i.tema_bin i.assunto_bin corrupcao_lava_jato_filled , rob
margins, dydx(i.tema_bin lava_jato corrupcao_lava_jato_filled ) post
outreg2 using "E:\artigo3\logit_marg_trafico_LJ_2.xls", append ctitle(Logit_corrupcao_Marg) keep(i.tema_bin lava_jato corrupcao_lava_jato_filled ) label addtext(Type of Crime FE, YES, Subject FE, YES, Judicial District FE, NO , Year Trend, YES)

logit resultado_rob i.ano lava_jato i.tema_bin i.comarca_bin i.assunto_bin corrupcao_lava_jato_filled , rob
margins, dydx(i.tema_bin lava_jato corrupcao_lava_jato_filled ) post
outreg2 using "E:\artigo3\logit_marg_trafico_LJ_2.xls", append ctitle(Logit_corrupcao_Marg) keep(i.tema_bin lava_jato corrupcao_lava_jato_filled ) label addtext(Type of Crime FE, YES, Subject FE, YES, Judicial District FE, YES , Year Trend, NO)

logit resultado_rob i.ano lava_jato i.tema_bin i.comarca_bin i.assunto_bin corrupcao_lava_jato_filled , rob
margins, dydx(i.tema_bin lava_jato corrupcao_lava_jato_filled ) post
outreg2 using "E:\artigo3\logit_marg_trafico_LJ_2.xls", append ctitle(Logit_corrupcao_Marg) keep(i.tema_bin lava_jato corrupcao_lava_jato_filled ) label addtext(Type of Crime FE, YES, Subject FE, YES, Judicial District FE, YES , Year Trend, YES)

*------------------- Regressao Logit Outros Crimes Efeito Fixo de Ano -------------------* 

clear
import delimited E:\artigo3\dados_logit_crime_LJ_final_2.csv, encoding(utf8)
set matsize 10000

encode tema, generate(tema_bin)
encode comarca, generate(comarca_bin)
encode assunto, generate(assunto_bin)
encode periodo_ajustado, generate(periodo_ajustado_bin)

logit resultado_rob i.ano lava_jato i.comarca_bin i.assunto_bin corrupcao_lava_jato_filled , rob
margins, dydx(lava_jato corrupcao_lava_jato_filled ) post
outreg2 using "E:\artigo3\logit_marg_crime_LJ_2.xls", replace ctitle(Logit_corrupcao_Marg) keep(i.tema_bin lava_jato corrupcao_lava_jato_filled ) label addtext(Type of Crime FE, NO, Subject FE, YES, Judicial District FE, YES , Year Trend, YES)

logit resultado_rob i.ano lava_jato i.tema_bin i.comarca_bin corrupcao_lava_jato_filled , rob
margins, dydx(i.tema_bin lava_jato corrupcao_lava_jato_filled ) post
outreg2 using "E:\artigo3\logit_marg_crime_LJ_2.xls", append ctitle(Logit_corrupcao_Marg) keep(i.tema_bin lava_jato corrupcao_lava_jato_filled ) label addtext(Type of Crime FE, YES, Subject FE, NO, Judicial District FE, YES , Year Trend, YES)

logit resultado_rob i.ano lava_jato i.tema_bin i.assunto_bin corrupcao_lava_jato_filled , rob
margins, dydx(i.tema_bin lava_jato corrupcao_lava_jato_filled ) post
outreg2 using "E:\artigo3\logit_marg_crime_LJ_2.xls", append ctitle(Logit_corrupcao_Marg) keep(i.tema_bin lava_jato corrupcao_lava_jato_filled ) label addtext(Type of Crime FE, YES, Subject FE, YES, Judicial District FE, NO , Year Trend, YES)

logit resultado_rob i.ano lava_jato i.tema_bin i.comarca_bin i.assunto_bin corrupcao_lava_jato_filled , rob
margins, dydx(i.tema_bin lava_jato corrupcao_lava_jato_filled ) post
outreg2 using "E:\artigo3\logit_marg_crime_LJ_2.xls", append ctitle(Logit_corrupcao_Marg) keep(i.tema_bin lava_jato corrupcao_lava_jato_filled ) label addtext(Type of Crime FE, YES, Subject FE, YES, Judicial District FE, YES , Year Trend, NO)

logit resultado_rob i.ano lava_jato i.tema_bin i.comarca_bin i.assunto_bin corrupcao_lava_jato_filled , rob
margins, dydx(i.tema_bin lava_jato corrupcao_lava_jato_filled ) post
outreg2 using "E:\artigo3\logit_marg_crime_LJ_2.xls", append ctitle(Logit_corrupcao_Marg) keep(i.tema_bin lava_jato corrupcao_lava_jato_filled ) label addtext(Type of Crime FE, YES, Subject FE, YES, Judicial District FE, YES , Year Trend, YES)

*------------------- Regressao Logit Todos Grupos Trend de Ano -------------------* 

clear
import delimited E:\artigo3\dados_logit_LJ_final_2.csv, encoding(utf8)
set matsize 10000

encode tema, generate(tema_bin)
encode comarca, generate(comarca_bin)
encode assunto, generate(assunto_bin)
encode periodo_ajustado, generate(periodo_ajustado_bin)

logit resultado_rob ano lava_jato i.comarca_bin i.assunto_bin corrupcao_lava_jato_filled , rob
margins, dydx(ano lava_jato corrupcao_lava_jato_filled ) post
outreg2 using "E:\artigo3\logit_marg_LJ.xls", replace ctitle(Logit_corrupcao_Marg) keep(ano i.tema_bin lava_jato corrupcao_lava_jato_filled ) label addtext(Type of Crime FE, NO, Subject FE, YES, Judicial District FE, YES , Year Trend, YES)

logit resultado_rob ano lava_jato i.tema_bin i.comarca_bin corrupcao_lava_jato_filled , rob
margins, dydx(ano i.tema_bin lava_jato corrupcao_lava_jato_filled ) post
outreg2 using "E:\artigo3\logit_marg_LJ.xls", append ctitle(Logit_corrupcao_Marg) keep(ano i.tema_bin lava_jato corrupcao_lava_jato_filled ) label addtext(Type of Crime FE, YES, Subject FE, NO, Judicial District FE, YES , Year Trend, YES)

logit resultado_rob ano lava_jato i.tema_bin i.assunto_bin corrupcao_lava_jato_filled , rob
margins, dydx(ano i.tema_bin lava_jato corrupcao_lava_jato_filled ) post
outreg2 using "E:\artigo3\logit_marg_LJ.xls", append ctitle(Logit_corrupcao_Marg) keep(ano i.tema_bin lava_jato corrupcao_lava_jato_filled ) label addtext(Type of Crime FE, YES, Subject FE, YES, Judicial District FE, NO , Year Trend, YES)

logit resultado_rob ano lava_jato i.tema_bin i.comarca_bin i.assunto_bin corrupcao_lava_jato_filled , rob
margins, dydx(ano i.tema_bin lava_jato corrupcao_lava_jato_filled ) post
outreg2 using "E:\artigo3\logit_marg_LJ.xls", append ctitle(Logit_corrupcao_Marg) keep(ano i.tema_bin lava_jato corrupcao_lava_jato_filled ) label addtext(Type of Crime FE, YES, Subject FE, YES, Judicial District FE, YES , Year Trend, NO)

logit resultado_rob ano lava_jato i.tema_bin i.comarca_bin i.assunto_bin corrupcao_lava_jato_filled , rob
margins, dydx(ano i.tema_bin lava_jato corrupcao_lava_jato_filled ) post
outreg2 using "E:\artigo3\logit_marg_LJ.xls", append ctitle(Logit_corrupcao_Marg) keep(ano i.tema_bin lava_jato corrupcao_lava_jato_filled ) label addtext(Type of Crime FE, YES, Subject FE, YES, Judicial District FE, YES , Year Trend, YES)

*------------------- Regressao Logit Trafico Trend de Ano -------------------* 

clear
import delimited E:\artigo3\dados_logit_trafico_LJ_final_2.csv, encoding(utf8)
set matsize 10000

encode tema, generate(tema_bin)
encode comarca, generate(comarca_bin)
encode assunto, generate(assunto_bin)
encode periodo_ajustado, generate(periodo_ajustado_bin)

logit resultado_rob ano lava_jato i.comarca_bin i.assunto_bin corrupcao_lava_jato_filled , rob
margins, dydx(ano lava_jato corrupcao_lava_jato_filled ) post
outreg2 using "E:\artigo3\logit_marg_trafico_LJ.xls", replace ctitle(Logit_corrupcao_Marg) keep(ano i.tema_bin lava_jato corrupcao_lava_jato_filled ) label addtext(Type of Crime FE, NO, Subject FE, YES, Judicial District FE, YES , Year Trend, YES)

logit resultado_rob ano lava_jato i.tema_bin i.comarca_bin corrupcao_lava_jato_filled , rob
margins, dydx(ano i.tema_bin lava_jato corrupcao_lava_jato_filled ) post
outreg2 using "E:\artigo3\logit_marg_trafico_LJ.xls", append ctitle(Logit_corrupcao_Marg) keep(ano i.tema_bin lava_jato corrupcao_lava_jato_filled ) label addtext(Type of Crime FE, YES, Subject FE, NO, Judicial District FE, YES , Year Trend, YES)

logit resultado_rob ano lava_jato i.tema_bin i.assunto_bin corrupcao_lava_jato_filled , rob
margins, dydx(ano i.tema_bin lava_jato corrupcao_lava_jato_filled ) post
outreg2 using "E:\artigo3\logit_marg_trafico_LJ.xls", append ctitle(Logit_corrupcao_Marg) keep(ano i.tema_bin lava_jato corrupcao_lava_jato_filled ) label addtext(Type of Crime FE, YES, Subject FE, YES, Judicial District FE, NO , Year Trend, YES)

logit resultado_rob ano lava_jato i.tema_bin i.comarca_bin i.assunto_bin corrupcao_lava_jato_filled , rob
margins, dydx(ano i.tema_bin lava_jato corrupcao_lava_jato_filled ) post
outreg2 using "E:\artigo3\logit_marg_trafico_LJ.xls", append ctitle(Logit_corrupcao_Marg) keep(ano i.tema_bin lava_jato corrupcao_lava_jato_filled ) label addtext(Type of Crime FE, YES, Subject FE, YES, Judicial District FE, YES , Year Trend, NO)

logit resultado_rob ano lava_jato i.tema_bin i.comarca_bin i.assunto_bin corrupcao_lava_jato_filled , rob
margins, dydx(ano i.tema_bin lava_jato corrupcao_lava_jato_filled ) post
outreg2 using "E:\artigo3\logit_marg_trafico_LJ.xls", append ctitle(Logit_corrupcao_Marg) keep(ano i.tema_bin lava_jato corrupcao_lava_jato_filled ) label addtext(Type of Crime FE, YES, Subject FE, YES, Judicial District FE, YES , Year Trend, YES)

*------------------- Regressao Logit Outros Crimes Trend de Ano -------------------* 

clear
import delimited E:\artigo3\dados_logit_crime_LJ_final_2.csv, encoding(utf8)
set matsize 10000

encode tema, generate(tema_bin)
encode comarca, generate(comarca_bin)
encode assunto, generate(assunto_bin)
encode periodo_ajustado, generate(periodo_ajustado_bin)

logit resultado_rob ano lava_jato i.comarca_bin i.assunto_bin corrupcao_lava_jato_filled , rob
margins, dydx(ano lava_jato corrupcao_lava_jato_filled ) post
outreg2 using "E:\artigo3\logit_marg_crime_LJ.xls", replace ctitle(Logit_corrupcao_Marg) keep(ano i.tema_bin lava_jato corrupcao_lava_jato_filled ) label addtext(Type of Crime FE, NO, Subject FE, YES, Judicial District FE, YES , Year Trend, YES)

logit resultado_rob ano lava_jato i.tema_bin i.comarca_bin corrupcao_lava_jato_filled , rob
margins, dydx(ano i.tema_bin lava_jato corrupcao_lava_jato_filled ) post
outreg2 using "E:\artigo3\logit_marg_crime_LJ.xls", append ctitle(Logit_corrupcao_Marg) keep(ano i.tema_bin lava_jato corrupcao_lava_jato_filled ) label addtext(Type of Crime FE, YES, Subject FE, NO, Judicial District FE, YES , Year Trend, YES)

logit resultado_rob ano lava_jato i.tema_bin i.assunto_bin corrupcao_lava_jato_filled , rob
margins, dydx(ano i.tema_bin lava_jato corrupcao_lava_jato_filled ) post
outreg2 using "E:\artigo3\logit_marg_crime_LJ.xls", append ctitle(Logit_corrupcao_Marg) keep(ano i.tema_bin lava_jato corrupcao_lava_jato_filled ) label addtext(Type of Crime FE, YES, Subject FE, YES, Judicial District FE, NO , Year Trend, YES)

logit resultado_rob ano lava_jato i.tema_bin i.comarca_bin i.assunto_bin corrupcao_lava_jato_filled , rob
margins, dydx(ano i.tema_bin lava_jato corrupcao_lava_jato_filled ) post
outreg2 using "E:\artigo3\logit_marg_crime_LJ.xls", append ctitle(Logit_corrupcao_Marg) keep(ano i.tema_bin lava_jato corrupcao_lava_jato_filled ) label addtext(Type of Crime FE, YES, Subject FE, YES, Judicial District FE, YES , Year Trend, NO)

logit resultado_rob ano lava_jato i.tema_bin i.comarca_bin i.assunto_bin corrupcao_lava_jato_filled , rob
margins, dydx(ano i.tema_bin lava_jato corrupcao_lava_jato_filled ) post
outreg2 using "E:\artigo3\logit_marg_crime_LJ.xls", append ctitle(Logit_corrupcao_Marg) keep(ano i.tema_bin lava_jato corrupcao_lava_jato_filled ) label addtext(Type of Crime FE, YES, Subject FE, YES, Judicial District FE, YES , Year Trend, YES)

*----------------------------------------------------------------------------------* 
*-------------------      Logit Dinamico 1.5 Anos Lava Jato     -------------------* 
*----------------------------------------------------------------------------------*
 
*------------------- Regressao Logit Todos Grupos Efeito Fixo de Ano -------------------*
 
clear
import delimited E:\artigo3\dados_logit_LJ_final_2.csv, encoding(utf8)
set matsize 10000

encode tema, generate(tema_bin)
encode comarca, generate(comarca_bin)
encode assunto, generate(assunto_bin)
encode periodo_ajustado, generate(periodo_ajustado_bin)

logit resultado_rob i.ano i.comarca_bin i.assunto_bin lava_jato_1 lava_jato_2 lava_jato_3 lava_jato_1_corrupcao lava_jato_2_corrupcao lava_jato_3_corrupcao, rob
margins, dydx(lava_jato_1 lava_jato_2 lava_jato_3 lava_jato_1_corrupcao lava_jato_2_corrupcao lava_jato_3_corrupcao) post
outreg2 using "E:\artigo3\logit_marg_LJ_2.xls", replace ctitle(Logit_corrupcao_Marg) keep(i.tema_bin lava_jato_1 lava_jato_2 lava_jato_3 lava_jato_1_corrupcao lava_jato_2_corrupcao lava_jato_3_corrupcao) label addtext(Type of Crime FE, NO, Subject FE, YES, Judicial District FE, YES , Year Trend, YES)

logit resultado_rob i.ano i.tema_bin i.comarca_bin lava_jato_1 lava_jato_2 lava_jato_3 lava_jato_1_corrupcao lava_jato_2_corrupcao lava_jato_3_corrupcao, rob
margins, dydx(i.tema_bin lava_jato_1 lava_jato_2 lava_jato_3 lava_jato_1_corrupcao lava_jato_2_corrupcao lava_jato_3_corrupcao) post
outreg2 using "E:\artigo3\logit_marg_LJ_2.xls", append ctitle(Logit_corrupcao_Marg) keep(i.tema_bin lava_jato_1 lava_jato_2 lava_jato_3 lava_jato_1_corrupcao lava_jato_2_corrupcao lava_jato_3_corrupcao) label addtext(Type of Crime FE, YES, Subject FE, NO, Judicial District FE, YES , Year Trend, YES)

logit resultado_rob i.ano i.tema_bin i.assunto_bin lava_jato_1 lava_jato_2 lava_jato_3 lava_jato_1_corrupcao lava_jato_2_corrupcao lava_jato_3_corrupcao, rob
margins, dydx(i.tema_bin lava_jato_1 lava_jato_2 lava_jato_3 lava_jato_1_corrupcao lava_jato_2_corrupcao lava_jato_3_corrupcao) post
outreg2 using "E:\artigo3\logit_marg_LJ_2.xls", append ctitle(Logit_corrupcao_Marg) keep(i.tema_bin lava_jato_1 lava_jato_2 lava_jato_3 lava_jato_1_corrupcao lava_jato_2_corrupcao lava_jato_3_corrupcao) label addtext(Type of Crime FE, YES, Subject FE, YES, Judicial District FE, NO , Year Trend, YES)

logit resultado_rob i.ano i.tema_bin i.comarca_bin i.assunto_bin lava_jato_1 lava_jato_2 lava_jato_3 lava_jato_1_corrupcao lava_jato_2_corrupcao lava_jato_3_corrupcao, rob
margins, dydx(i.tema_bin lava_jato_1 lava_jato_2 lava_jato_3 lava_jato_1_corrupcao lava_jato_2_corrupcao lava_jato_3_corrupcao) post
outreg2 using "E:\artigo3\logit_marg_LJ_2.xls", append ctitle(Logit_corrupcao_Marg) keep(i.tema_bin lava_jato_1 lava_jato_2 lava_jato_3 lava_jato_1_corrupcao lava_jato_2_corrupcao lava_jato_3_corrupcao) label addtext(Type of Crime FE, YES, Subject FE, YES, Judicial District FE, YES , Year Trend, NO)

logit resultado_rob i.ano i.tema_bin i.comarca_bin i.assunto_bin lava_jato_1 lava_jato_2 lava_jato_3 lava_jato_1_corrupcao lava_jato_2_corrupcao lava_jato_3_corrupcao, rob
margins, dydx(i.tema_bin lava_jato_1 lava_jato_2 lava_jato_3 lava_jato_1_corrupcao lava_jato_2_corrupcao lava_jato_3_corrupcao) post
outreg2 using "E:\artigo3\logit_marg_LJ_2.xls", append ctitle(Logit_corrupcao_Marg) keep(i.tema_bin lava_jato_1 lava_jato_2 lava_jato_3 lava_jato_1_corrupcao lava_jato_2_corrupcao lava_jato_3_corrupcao) label addtext(Type of Crime FE, YES, Subject FE, YES, Judicial District FE, YES , Year Trend, YES)

*------------------- Regressao Logit Trafico Efeito Fixo de Ano -------------------* 

clear
import delimited E:\artigo3\dados_logit_trafico_LJ_final_2.csv, encoding(utf8)
set matsize 10000

encode tema, generate(tema_bin)
encode comarca, generate(comarca_bin)
encode assunto, generate(assunto_bin)
encode periodo_ajustado, generate(periodo_ajustado_bin)

logit resultado_rob i.ano i.comarca_bin i.assunto_bin lava_jato_1 lava_jato_2 lava_jato_3 lava_jato_1_corrupcao lava_jato_2_corrupcao lava_jato_3_corrupcao, rob
margins, dydx(lava_jato_1 lava_jato_2 lava_jato_3 lava_jato_1_corrupcao lava_jato_2_corrupcao lava_jato_3_corrupcao) post
outreg2 using "E:\artigo3\logit_marg_trafico_LJ_2.xls", replace ctitle(Logit_corrupcao_Marg) keep(i.tema_bin lava_jato_1 lava_jato_2 lava_jato_3 lava_jato_1_corrupcao lava_jato_2_corrupcao lava_jato_3_corrupcao) label addtext(Type of Crime FE, NO, Subject FE, YES, Judicial District FE, YES , Year Trend, YES)

logit resultado_rob i.ano i.tema_bin i.comarca_bin lava_jato_1 lava_jato_2 lava_jato_3 lava_jato_1_corrupcao lava_jato_2_corrupcao lava_jato_3_corrupcao, rob
margins, dydx(i.tema_bin lava_jato_1 lava_jato_2 lava_jato_3 lava_jato_1_corrupcao lava_jato_2_corrupcao lava_jato_3_corrupcao) post
outreg2 using "E:\artigo3\logit_marg_trafico_LJ_2.xls", append ctitle(Logit_corrupcao_Marg) keep(i.tema_bin lava_jato_1 lava_jato_2 lava_jato_3 lava_jato_1_corrupcao lava_jato_2_corrupcao lava_jato_3_corrupcao) label addtext(Type of Crime FE, YES, Subject FE, NO, Judicial District FE, YES , Year Trend, YES)

logit resultado_rob i.ano i.tema_bin i.assunto_bin lava_jato_1 lava_jato_2 lava_jato_3 lava_jato_1_corrupcao lava_jato_2_corrupcao lava_jato_3_corrupcao, rob
margins, dydx(i.tema_bin lava_jato_1 lava_jato_2 lava_jato_3 lava_jato_1_corrupcao lava_jato_2_corrupcao lava_jato_3_corrupcao) post
outreg2 using "E:\artigo3\logit_marg_trafico_LJ_2.xls", append ctitle(Logit_corrupcao_Marg) keep(i.tema_bin lava_jato_1 lava_jato_2 lava_jato_3 lava_jato_1_corrupcao lava_jato_2_corrupcao lava_jato_3_corrupcao) label addtext(Type of Crime FE, YES, Subject FE, YES, Judicial District FE, NO , Year Trend, YES)

logit resultado_rob i.ano i.tema_bin i.comarca_bin i.assunto_bin lava_jato_1 lava_jato_2 lava_jato_3 lava_jato_1_corrupcao lava_jato_2_corrupcao lava_jato_3_corrupcao, rob
margins, dydx(i.tema_bin lava_jato_1 lava_jato_2 lava_jato_3 lava_jato_1_corrupcao lava_jato_2_corrupcao lava_jato_3_corrupcao) post
outreg2 using "E:\artigo3\logit_marg_trafico_LJ_2.xls", append ctitle(Logit_corrupcao_Marg) keep(i.tema_bin lava_jato_1 lava_jato_2 lava_jato_3 lava_jato_1_corrupcao lava_jato_2_corrupcao lava_jato_3_corrupcao) label addtext(Type of Crime FE, YES, Subject FE, YES, Judicial District FE, YES , Year Trend, NO)

logit resultado_rob i.ano i.tema_bin i.comarca_bin i.assunto_bin lava_jato_1 lava_jato_2 lava_jato_3 lava_jato_1_corrupcao lava_jato_2_corrupcao lava_jato_3_corrupcao, rob
margins, dydx(i.tema_bin lava_jato_1 lava_jato_2 lava_jato_3 lava_jato_1_corrupcao lava_jato_2_corrupcao lava_jato_3_corrupcao) post
outreg2 using "E:\artigo3\logit_marg_trafico_LJ_2.xls", append ctitle(Logit_corrupcao_Marg) keep(i.tema_bin lava_jato_1 lava_jato_2 lava_jato_3 lava_jato_1_corrupcao lava_jato_2_corrupcao lava_jato_3_corrupcao) label addtext(Type of Crime FE, YES, Subject FE, YES, Judicial District FE, YES , Year Trend, YES)

*------------------- Regressao Logit Outros Crimes Efeito Fixo de Ano -------------------* 

clear
import delimited E:\artigo3\dados_logit_crime_LJ_final_2.csv, encoding(utf8)
set matsize 10000

encode tema, generate(tema_bin)
encode comarca, generate(comarca_bin)
encode assunto, generate(assunto_bin)
encode periodo_ajustado, generate(periodo_ajustado_bin)

logit resultado_rob i.ano i.comarca_bin i.assunto_bin lava_jato_1 lava_jato_2 lava_jato_3 lava_jato_1_corrupcao lava_jato_2_corrupcao lava_jato_3_corrupcao, rob
margins, dydx(lava_jato_1 lava_jato_2 lava_jato_3 lava_jato_1_corrupcao lava_jato_2_corrupcao lava_jato_3_corrupcao) post
outreg2 using "E:\artigo3\logit_marg_crime_LJ_2.xls", replace ctitle(Logit_corrupcao_Marg) keep(i.tema_bin lava_jato_1 lava_jato_2 lava_jato_3 lava_jato_1_corrupcao lava_jato_2_corrupcao lava_jato_3_corrupcao) label addtext(Type of Crime FE, NO, Subject FE, YES, Judicial District FE, YES , Year Trend, YES)

logit resultado_rob i.ano i.tema_bin i.comarca_bin lava_jato_1 lava_jato_2 lava_jato_3 lava_jato_1_corrupcao lava_jato_2_corrupcao lava_jato_3_corrupcao, rob
margins, dydx(i.tema_bin lava_jato_1 lava_jato_2 lava_jato_3 lava_jato_1_corrupcao lava_jato_2_corrupcao lava_jato_3_corrupcao) post
outreg2 using "E:\artigo3\logit_marg_crime_LJ_2.xls", append ctitle(Logit_corrupcao_Marg) keep(i.tema_bin lava_jato_1 lava_jato_2 lava_jato_3 lava_jato_1_corrupcao lava_jato_2_corrupcao lava_jato_3_corrupcao) label addtext(Type of Crime FE, YES, Subject FE, NO, Judicial District FE, YES , Year Trend, YES)

logit resultado_rob i.ano i.tema_bin i.assunto_bin lava_jato_1 lava_jato_2 lava_jato_3 lava_jato_1_corrupcao lava_jato_2_corrupcao lava_jato_3_corrupcao, rob
margins, dydx(i.tema_bin lava_jato_1 lava_jato_2 lava_jato_3 lava_jato_1_corrupcao lava_jato_2_corrupcao lava_jato_3_corrupcao) post
outreg2 using "E:\artigo3\logit_marg_crime_LJ_2.xls", append ctitle(Logit_corrupcao_Marg) keep(i.tema_bin lava_jato_1 lava_jato_2 lava_jato_3 lava_jato_1_corrupcao lava_jato_2_corrupcao lava_jato_3_corrupcao) label addtext(Type of Crime FE, YES, Subject FE, YES, Judicial District FE, NO , Year Trend, YES)

logit resultado_rob i.ano i.tema_bin i.comarca_bin i.assunto_bin lava_jato_1 lava_jato_2 lava_jato_3 lava_jato_1_corrupcao lava_jato_2_corrupcao lava_jato_3_corrupcao, rob
margins, dydx(i.tema_bin lava_jato_1 lava_jato_2 lava_jato_3 lava_jato_1_corrupcao lava_jato_2_corrupcao lava_jato_3_corrupcao) post
outreg2 using "E:\artigo3\logit_marg_crime_LJ_2.xls", append ctitle(Logit_corrupcao_Marg) keep(i.tema_bin lava_jato_1 lava_jato_2 lava_jato_3 lava_jato_1_corrupcao lava_jato_2_corrupcao lava_jato_3_corrupcao) label addtext(Type of Crime FE, YES, Subject FE, YES, Judicial District FE, YES , Year Trend, NO)

logit resultado_rob i.ano i.tema_bin i.comarca_bin i.assunto_bin lava_jato_1 lava_jato_2 lava_jato_3 lava_jato_1_corrupcao lava_jato_2_corrupcao lava_jato_3_corrupcao, rob
margins, dydx(i.tema_bin lava_jato_1 lava_jato_2 lava_jato_3 lava_jato_1_corrupcao lava_jato_2_corrupcao lava_jato_3_corrupcao) post
outreg2 using "E:\artigo3\logit_marg_crime_LJ_2.xls", append ctitle(Logit_corrupcao_Marg) keep(i.tema_bin lava_jato_1 lava_jato_2 lava_jato_3 lava_jato_1_corrupcao lava_jato_2_corrupcao lava_jato_3_corrupcao) label addtext(Type of Crime FE, YES, Subject FE, YES, Judicial District FE, YES , Year Trend, YES)

*------------------- Regressao Logit Todos Grupos Trend de Ano -------------------* 

clear
import delimited E:\artigo3\dados_logit_LJ_final_2.csv, encoding(utf8)
set matsize 10000

encode tema, generate(tema_bin)
encode comarca, generate(comarca_bin)
encode assunto, generate(assunto_bin)
encode periodo_ajustado, generate(periodo_ajustado_bin)

logit resultado_rob ano i.comarca_bin i.assunto_bin lava_jato_1 lava_jato_2 lava_jato_3 lava_jato_1_corrupcao lava_jato_2_corrupcao lava_jato_3_corrupcao, rob
margins, dydx(ano lava_jato_1 lava_jato_2 lava_jato_3 lava_jato_1_corrupcao lava_jato_2_corrupcao lava_jato_3_corrupcao) post
outreg2 using "E:\artigo3\logit_marg_LJ.xls", replace ctitle(Logit_corrupcao_Marg) keep(ano i.tema_bin lava_jato_1 lava_jato_2 lava_jato_3 lava_jato_1_corrupcao lava_jato_2_corrupcao lava_jato_3_corrupcao) label addtext(Type of Crime FE, NO, Subject FE, YES, Judicial District FE, YES , Year Trend, YES)

logit resultado_rob ano i.tema_bin i.comarca_bin lava_jato_1 lava_jato_2 lava_jato_3 lava_jato_1_corrupcao lava_jato_2_corrupcao lava_jato_3_corrupcao, rob
margins, dydx(ano i.tema_bin lava_jato_1 lava_jato_2 lava_jato_3 lava_jato_1_corrupcao lava_jato_2_corrupcao lava_jato_3_corrupcao) post
outreg2 using "E:\artigo3\logit_marg_LJ.xls", append ctitle(Logit_corrupcao_Marg) keep(ano i.tema_bin lava_jato_1 lava_jato_2 lava_jato_3 lava_jato_1_corrupcao lava_jato_2_corrupcao lava_jato_3_corrupcao) label addtext(Type of Crime FE, YES, Subject FE, NO, Judicial District FE, YES , Year Trend, YES)

logit resultado_rob ano i.tema_bin i.assunto_bin lava_jato_1 lava_jato_2 lava_jato_3 lava_jato_1_corrupcao lava_jato_2_corrupcao lava_jato_3_corrupcao, rob
margins, dydx(ano i.tema_bin lava_jato_1 lava_jato_2 lava_jato_3 lava_jato_1_corrupcao lava_jato_2_corrupcao lava_jato_3_corrupcao) post
outreg2 using "E:\artigo3\logit_marg_LJ.xls", append ctitle(Logit_corrupcao_Marg) keep(ano i.tema_bin lava_jato_1 lava_jato_2 lava_jato_3 lava_jato_1_corrupcao lava_jato_2_corrupcao lava_jato_3_corrupcao) label addtext(Type of Crime FE, YES, Subject FE, YES, Judicial District FE, NO , Year Trend, YES)

logit resultado_rob ano i.tema_bin i.comarca_bin i.assunto_bin lava_jato_1 lava_jato_2 lava_jato_3 lava_jato_1_corrupcao lava_jato_2_corrupcao lava_jato_3_corrupcao, rob
margins, dydx(ano i.tema_bin lava_jato_1 lava_jato_2 lava_jato_3 lava_jato_1_corrupcao lava_jato_2_corrupcao lava_jato_3_corrupcao) post
outreg2 using "E:\artigo3\logit_marg_LJ.xls", append ctitle(Logit_corrupcao_Marg) keep(ano i.tema_bin lava_jato_1 lava_jato_2 lava_jato_3 lava_jato_1_corrupcao lava_jato_2_corrupcao lava_jato_3_corrupcao) label addtext(Type of Crime FE, YES, Subject FE, YES, Judicial District FE, YES , Year Trend, NO)

logit resultado_rob ano i.tema_bin i.comarca_bin i.assunto_bin lava_jato_1 lava_jato_2 lava_jato_3 lava_jato_1_corrupcao lava_jato_2_corrupcao lava_jato_3_corrupcao, rob
margins, dydx(ano i.tema_bin lava_jato_1 lava_jato_2 lava_jato_3 lava_jato_1_corrupcao lava_jato_2_corrupcao lava_jato_3_corrupcao) post
outreg2 using "E:\artigo3\logit_marg_LJ.xls", append ctitle(Logit_corrupcao_Marg) keep(ano i.tema_bin lava_jato_1 lava_jato_2 lava_jato_3 lava_jato_1_corrupcao lava_jato_2_corrupcao lava_jato_3_corrupcao) label addtext(Type of Crime FE, YES, Subject FE, YES, Judicial District FE, YES , Year Trend, YES)

*------------------- Regressao Logit Trafico Trend de Ano -------------------* 

clear
import delimited E:\artigo3\dados_logit_trafico_LJ_final_2.csv, encoding(utf8)
set matsize 10000

encode tema, generate(tema_bin)
encode comarca, generate(comarca_bin)
encode assunto, generate(assunto_bin)
encode periodo_ajustado, generate(periodo_ajustado_bin)

logit resultado_rob ano i.comarca_bin i.assunto_bin lava_jato_1 lava_jato_2 lava_jato_3 lava_jato_1_corrupcao lava_jato_2_corrupcao lava_jato_3_corrupcao, rob
margins, dydx(ano lava_jato_1 lava_jato_2 lava_jato_3 lava_jato_1_corrupcao lava_jato_2_corrupcao lava_jato_3_corrupcao) post
outreg2 using "E:\artigo3\logit_marg_trafico_LJ.xls", replace ctitle(Logit_corrupcao_Marg) keep(ano i.tema_bin lava_jato_1 lava_jato_2 lava_jato_3 lava_jato_1_corrupcao lava_jato_2_corrupcao lava_jato_3_corrupcao) label addtext(Type of Crime FE, NO, Subject FE, YES, Judicial District FE, YES , Year Trend, YES)

logit resultado_rob ano i.tema_bin i.comarca_bin lava_jato_1 lava_jato_2 lava_jato_3 lava_jato_1_corrupcao lava_jato_2_corrupcao lava_jato_3_corrupcao, rob
margins, dydx(ano i.tema_bin lava_jato_1 lava_jato_2 lava_jato_3 lava_jato_1_corrupcao lava_jato_2_corrupcao lava_jato_3_corrupcao) post
outreg2 using "E:\artigo3\logit_marg_trafico_LJ.xls", append ctitle(Logit_corrupcao_Marg) keep(ano i.tema_bin lava_jato_1 lava_jato_2 lava_jato_3 lava_jato_1_corrupcao lava_jato_2_corrupcao lava_jato_3_corrupcao) label addtext(Type of Crime FE, YES, Subject FE, NO, Judicial District FE, YES , Year Trend, YES)

logit resultado_rob ano i.tema_bin i.assunto_bin lava_jato_1 lava_jato_2 lava_jato_3 lava_jato_1_corrupcao lava_jato_2_corrupcao lava_jato_3_corrupcao, rob
margins, dydx(ano i.tema_bin lava_jato_1 lava_jato_2 lava_jato_3 lava_jato_1_corrupcao lava_jato_2_corrupcao lava_jato_3_corrupcao) post
outreg2 using "E:\artigo3\logit_marg_trafico_LJ.xls", append ctitle(Logit_corrupcao_Marg) keep(ano i.tema_bin lava_jato_1 lava_jato_2 lava_jato_3 lava_jato_1_corrupcao lava_jato_2_corrupcao lava_jato_3_corrupcao) label addtext(Type of Crime FE, YES, Subject FE, YES, Judicial District FE, NO , Year Trend, YES)

logit resultado_rob ano i.tema_bin i.comarca_bin i.assunto_bin lava_jato_1 lava_jato_2 lava_jato_3 lava_jato_1_corrupcao lava_jato_2_corrupcao lava_jato_3_corrupcao, rob
margins, dydx(ano i.tema_bin lava_jato_1 lava_jato_2 lava_jato_3 lava_jato_1_corrupcao lava_jato_2_corrupcao lava_jato_3_corrupcao) post
outreg2 using "E:\artigo3\logit_marg_trafico_LJ.xls", append ctitle(Logit_corrupcao_Marg) keep(ano i.tema_bin lava_jato_1 lava_jato_2 lava_jato_3 lava_jato_1_corrupcao lava_jato_2_corrupcao lava_jato_3_corrupcao) label addtext(Type of Crime FE, YES, Subject FE, YES, Judicial District FE, YES , Year Trend, NO)

logit resultado_rob ano i.tema_bin i.comarca_bin i.assunto_bin lava_jato_1 lava_jato_2 lava_jato_3 lava_jato_1_corrupcao lava_jato_2_corrupcao lava_jato_3_corrupcao, rob
margins, dydx(ano i.tema_bin lava_jato_1 lava_jato_2 lava_jato_3 lava_jato_1_corrupcao lava_jato_2_corrupcao lava_jato_3_corrupcao) post
outreg2 using "E:\artigo3\logit_marg_trafico_LJ.xls", append ctitle(Logit_corrupcao_Marg) keep(ano i.tema_bin lava_jato_1 lava_jato_2 lava_jato_3 lava_jato_1_corrupcao lava_jato_2_corrupcao lava_jato_3_corrupcao) label addtext(Type of Crime FE, YES, Subject FE, YES, Judicial District FE, YES , Year Trend, YES)

*------------------- Regressao Logit Outros Crimes Trend de Ano -------------------* 

clear
import delimited E:\artigo3\dados_logit_crime_LJ_final_2.csv, encoding(utf8)
set matsize 10000

encode tema, generate(tema_bin)
encode comarca, generate(comarca_bin)
encode assunto, generate(assunto_bin)
encode periodo_ajustado, generate(periodo_ajustado_bin)

logit resultado_rob ano i.comarca_bin i.assunto_bin lava_jato_1 lava_jato_2 lava_jato_3 lava_jato_1_corrupcao lava_jato_2_corrupcao lava_jato_3_corrupcao, rob
margins, dydx(ano lava_jato_1 lava_jato_2 lava_jato_3 lava_jato_1_corrupcao lava_jato_2_corrupcao lava_jato_3_corrupcao) post
outreg2 using "E:\artigo3\logit_marg_crime_LJ.xls", replace ctitle(Logit_corrupcao_Marg) keep(ano i.tema_bin lava_jato_1 lava_jato_2 lava_jato_3 lava_jato_1_corrupcao lava_jato_2_corrupcao lava_jato_3_corrupcao) label addtext(Type of Crime FE, NO, Subject FE, YES, Judicial District FE, YES , Year Trend, YES)

logit resultado_rob ano i.tema_bin i.comarca_bin lava_jato_1 lava_jato_2 lava_jato_3 lava_jato_1_corrupcao lava_jato_2_corrupcao lava_jato_3_corrupcao, rob
margins, dydx(ano i.tema_bin lava_jato_1 lava_jato_2 lava_jato_3 lava_jato_1_corrupcao lava_jato_2_corrupcao lava_jato_3_corrupcao) post
outreg2 using "E:\artigo3\logit_marg_crime_LJ.xls", append ctitle(Logit_corrupcao_Marg) keep(ano i.tema_bin lava_jato_1 lava_jato_2 lava_jato_3 lava_jato_1_corrupcao lava_jato_2_corrupcao lava_jato_3_corrupcao) label addtext(Type of Crime FE, YES, Subject FE, NO, Judicial District FE, YES , Year Trend, YES)

logit resultado_rob ano i.tema_bin i.assunto_bin lava_jato_1 lava_jato_2 lava_jato_3 lava_jato_1_corrupcao lava_jato_2_corrupcao lava_jato_3_corrupcao, rob
margins, dydx(ano i.tema_bin lava_jato_1 lava_jato_2 lava_jato_3 lava_jato_1_corrupcao lava_jato_2_corrupcao lava_jato_3_corrupcao) post
outreg2 using "E:\artigo3\logit_marg_crime_LJ.xls", append ctitle(Logit_corrupcao_Marg) keep(ano i.tema_bin lava_jato_1 lava_jato_2 lava_jato_3 lava_jato_1_corrupcao lava_jato_2_corrupcao lava_jato_3_corrupcao) label addtext(Type of Crime FE, YES, Subject FE, YES, Judicial District FE, NO , Year Trend, YES)

logit resultado_rob ano i.tema_bin i.comarca_bin i.assunto_bin lava_jato_1 lava_jato_2 lava_jato_3 lava_jato_1_corrupcao lava_jato_2_corrupcao lava_jato_3_corrupcao, rob
margins, dydx(ano i.tema_bin lava_jato_1 lava_jato_2 lava_jato_3 lava_jato_1_corrupcao lava_jato_2_corrupcao lava_jato_3_corrupcao) post
outreg2 using "E:\artigo3\logit_marg_crime_LJ.xls", append ctitle(Logit_corrupcao_Marg) keep(ano i.tema_bin lava_jato_1 lava_jato_2 lava_jato_3 lava_jato_1_corrupcao lava_jato_2_corrupcao lava_jato_3_corrupcao) label addtext(Type of Crime FE, YES, Subject FE, YES, Judicial District FE, YES , Year Trend, NO)

logit resultado_rob ano i.tema_bin i.comarca_bin i.assunto_bin lava_jato_1 lava_jato_2 lava_jato_3 lava_jato_1_corrupcao lava_jato_2_corrupcao lava_jato_3_corrupcao, rob
margins, dydx(ano i.tema_bin lava_jato_1 lava_jato_2 lava_jato_3 lava_jato_1_corrupcao lava_jato_2_corrupcao lava_jato_3_corrupcao) post
outreg2 using "E:\artigo3\logit_marg_crime_LJ.xls", append ctitle(Logit_corrupcao_Marg) keep(ano i.tema_bin lava_jato_1 lava_jato_2 lava_jato_3 lava_jato_1_corrupcao lava_jato_2_corrupcao lava_jato_3_corrupcao) label addtext(Type of Crime FE, YES, Subject FE, YES, Judicial District FE, YES , Year Trend, YES)

 