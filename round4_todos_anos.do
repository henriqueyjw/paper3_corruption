clear
import delimited E:\artigo3\dados_logit_final.csv, encoding(utf8)
set matsize 10000

encode tema, generate(tema_bin)
encode comarca, generate(comarca_bin)
encode assunto, generate(assunto_bin)
encode periodo_ajustado, generate(periodo_ajustado_bin)

logit resultado i.ano lava_jato vaza_jato i.comarca_bin i.assunto_bin corrupcao_lava_jato_filled corrupcao_vaza_jato_filled, rob
margins, dydx(lava_jato vaza_jato corrupcao_lava_jato_filled corrupcao_vaza_jato_filled) post
outreg2 using "E:\artigo3\logit_marg_2.xls", replace ctitle(Logit_corrupcao_Marg) keep(i.tema_bin lava_jato vaza_jato corrupcao_lava_jato_filled corrupcao_vaza_jato_filled) label addtext(Type of Crime FE, NO, Subject FE, YES, Judicial District FE, YES , Year Trend, YES)

logit resultado i.ano lava_jato vaza_jato i.tema_bin i.comarca_bin corrupcao_lava_jato_filled corrupcao_vaza_jato_filled, rob
margins, dydx(i.tema_bin lava_jato vaza_jato corrupcao_lava_jato_filled corrupcao_vaza_jato_filled) post
outreg2 using "E:\artigo3\logit_marg_2.xls", append ctitle(Logit_corrupcao_Marg) keep(i.tema_bin lava_jato vaza_jato corrupcao_lava_jato_filled corrupcao_vaza_jato_filled) label addtext(Type of Crime FE, YES, Subject FE, NO, Judicial District FE, YES , Year Trend, YES)

logit resultado i.ano lava_jato vaza_jato i.tema_bin i.assunto_bin corrupcao_lava_jato_filled corrupcao_vaza_jato_filled, rob
margins, dydx(i.tema_bin lava_jato vaza_jato corrupcao_lava_jato_filled corrupcao_vaza_jato_filled) post
outreg2 using "E:\artigo3\logit_marg_2.xls", append ctitle(Logit_corrupcao_Marg) keep(i.tema_bin lava_jato vaza_jato corrupcao_lava_jato_filled corrupcao_vaza_jato_filled) label addtext(Type of Crime FE, YES, Subject FE, YES, Judicial District FE, NO , Year Trend, YES)

logit resultado i.ano lava_jato vaza_jato i.tema_bin i.comarca_bin i.assunto_bin corrupcao_lava_jato_filled corrupcao_vaza_jato_filled, rob
margins, dydx(i.tema_bin lava_jato vaza_jato corrupcao_lava_jato_filled corrupcao_vaza_jato_filled) post
outreg2 using "E:\artigo3\logit_marg_2.xls", append ctitle(Logit_corrupcao_Marg) keep(i.tema_bin lava_jato vaza_jato corrupcao_lava_jato_filled corrupcao_vaza_jato_filled) label addtext(Type of Crime FE, YES, Subject FE, YES, Judicial District FE, YES , Year Trend, NO)

logit resultado i.ano lava_jato vaza_jato i.tema_bin i.comarca_bin i.assunto_bin corrupcao_lava_jato_filled corrupcao_vaza_jato_filled, rob
margins, dydx(i.tema_bin lava_jato vaza_jato corrupcao_lava_jato_filled corrupcao_vaza_jato_filled) post
outreg2 using "E:\artigo3\logit_marg_2.xls", append ctitle(Logit_corrupcao_Marg) keep(i.tema_bin lava_jato vaza_jato corrupcao_lava_jato_filled corrupcao_vaza_jato_filled) label addtext(Type of Crime FE, YES, Subject FE, YES, Judicial District FE, YES , Year Trend, YES)

*------------------- regressao Logit Resultados (acordo = Condenado) -------------------* 

clear
import delimited E:\artigo3\dados_logit_corrupcao.csv, encoding(utf8)
set matsize 10000

encode tema, generate(tema_bin)
encode comarca, generate(comarca_bin)
encode assunto, generate(assunto_bin)
encode periodo_ajustado, generate(periodo_ajustado_bin)

logit resultado i.ano lava_jato vaza_jato i.comarca_bin i.assunto_bin corrupcao_lava_jato_filled corrupcao_vaza_jato_filled, rob
margins, dydx(lava_jato vaza_jato corrupcao_lava_jato_filled corrupcao_vaza_jato_filled) post
outreg2 using "E:\artigo3\logit_marg_corrupcao_2.xls", replace ctitle(Logit_corrupcao_Marg) keep(i.tema_bin lava_jato vaza_jato corrupcao_lava_jato_filled corrupcao_vaza_jato_filled) label addtext(Type of Crime FE, NO, Subject FE, YES, Judicial District FE, YES , Year Trend, YES)

logit resultado i.ano lava_jato vaza_jato i.tema_bin i.comarca_bin corrupcao_lava_jato_filled corrupcao_vaza_jato_filled, rob
margins, dydx(i.tema_bin lava_jato vaza_jato corrupcao_lava_jato_filled corrupcao_vaza_jato_filled) post
outreg2 using "E:\artigo3\logit_marg_corrupcao_2.xls", append ctitle(Logit_corrupcao_Marg) keep(i.tema_bin lava_jato vaza_jato corrupcao_lava_jato_filled corrupcao_vaza_jato_filled) label addtext(Type of Crime FE, YES, Subject FE, NO, Judicial District FE, YES , Year Trend, YES)

logit resultado i.ano lava_jato vaza_jato i.tema_bin i.assunto_bin corrupcao_lava_jato_filled corrupcao_vaza_jato_filled, rob
margins, dydx(i.tema_bin lava_jato vaza_jato corrupcao_lava_jato_filled corrupcao_vaza_jato_filled) post
outreg2 using "E:\artigo3\logit_marg_corrupcao_2.xls", append ctitle(Logit_corrupcao_Marg) keep(i.tema_bin lava_jato vaza_jato corrupcao_lava_jato_filled corrupcao_vaza_jato_filled) label addtext(Type of Crime FE, YES, Subject FE, YES, Judicial District FE, NO , Year Trend, YES)

logit resultado i.ano lava_jato vaza_jato i.tema_bin i.comarca_bin i.assunto_bin corrupcao_lava_jato_filled corrupcao_vaza_jato_filled, rob
margins, dydx(i.tema_bin lava_jato vaza_jato corrupcao_lava_jato_filled corrupcao_vaza_jato_filled) post
outreg2 using "E:\artigo3\logit_marg_corrupcao_2.xls", append ctitle(Logit_corrupcao_Marg) keep(i.tema_bin lava_jato vaza_jato corrupcao_lava_jato_filled corrupcao_vaza_jato_filled) label addtext(Type of Crime FE, YES, Subject FE, YES, Judicial District FE, YES , Year Trend, NO)

logit resultado i.ano lava_jato vaza_jato i.tema_bin i.comarca_bin i.assunto_bin corrupcao_lava_jato_filled corrupcao_vaza_jato_filled, rob
margins, dydx(i.tema_bin lava_jato vaza_jato corrupcao_lava_jato_filled corrupcao_vaza_jato_filled) post
outreg2 using "E:\artigo3\logit_marg_corrupcao_2.xls", append ctitle(Logit_corrupcao_Marg) keep(i.tema_bin lava_jato vaza_jato corrupcao_lava_jato_filled corrupcao_vaza_jato_filled) label addtext(Type of Crime FE, YES, Subject FE, YES, Judicial District FE, YES , Year Trend, YES)

*------------------- regressao Logit Resultados (acordo = Condenado) -------------------* 

clear
import delimited E:\artigo3\dados_logit_trafico_final.csv, encoding(utf8)
set matsize 10000

encode tema, generate(tema_bin)
encode comarca, generate(comarca_bin)
encode assunto, generate(assunto_bin)
encode periodo_ajustado, generate(periodo_ajustado_bin)

logit resultado i.ano lava_jato vaza_jato i.comarca_bin i.assunto_bin corrupcao_lava_jato_filled corrupcao_vaza_jato_filled, rob
margins, dydx(lava_jato vaza_jato corrupcao_lava_jato_filled corrupcao_vaza_jato_filled) post
outreg2 using "E:\artigo3\logit_marg_trafico_2.xls", replace ctitle(Logit_corrupcao_Marg) keep(i.tema_bin lava_jato vaza_jato corrupcao_lava_jato_filled corrupcao_vaza_jato_filled) label addtext(Type of Crime FE, NO, Subject FE, YES, Judicial District FE, YES , Year Trend, YES)

logit resultado i.ano lava_jato vaza_jato i.tema_bin i.comarca_bin corrupcao_lava_jato_filled corrupcao_vaza_jato_filled, rob
margins, dydx(i.tema_bin lava_jato vaza_jato corrupcao_lava_jato_filled corrupcao_vaza_jato_filled) post
outreg2 using "E:\artigo3\logit_marg_trafico_2.xls", append ctitle(Logit_corrupcao_Marg) keep(i.tema_bin lava_jato vaza_jato corrupcao_lava_jato_filled corrupcao_vaza_jato_filled) label addtext(Type of Crime FE, YES, Subject FE, NO, Judicial District FE, YES , Year Trend, YES)

logit resultado i.ano lava_jato vaza_jato i.tema_bin i.assunto_bin corrupcao_lava_jato_filled corrupcao_vaza_jato_filled, rob
margins, dydx(i.tema_bin lava_jato vaza_jato corrupcao_lava_jato_filled corrupcao_vaza_jato_filled) post
outreg2 using "E:\artigo3\logit_marg_trafico_2.xls", append ctitle(Logit_corrupcao_Marg) keep(i.tema_bin lava_jato vaza_jato corrupcao_lava_jato_filled corrupcao_vaza_jato_filled) label addtext(Type of Crime FE, YES, Subject FE, YES, Judicial District FE, NO , Year Trend, YES)

logit resultado i.ano lava_jato vaza_jato i.tema_bin i.comarca_bin i.assunto_bin corrupcao_lava_jato_filled corrupcao_vaza_jato_filled, rob
margins, dydx(i.tema_bin lava_jato vaza_jato corrupcao_lava_jato_filled corrupcao_vaza_jato_filled) post
outreg2 using "E:\artigo3\logit_marg_trafico_2.xls", append ctitle(Logit_corrupcao_Marg) keep(i.tema_bin lava_jato vaza_jato corrupcao_lava_jato_filled corrupcao_vaza_jato_filled) label addtext(Type of Crime FE, YES, Subject FE, YES, Judicial District FE, YES , Year Trend, NO)

logit resultado i.ano lava_jato vaza_jato i.tema_bin i.comarca_bin i.assunto_bin corrupcao_lava_jato_filled corrupcao_vaza_jato_filled, rob
margins, dydx(i.tema_bin lava_jato vaza_jato corrupcao_lava_jato_filled corrupcao_vaza_jato_filled) post
outreg2 using "E:\artigo3\logit_marg_trafico_2.xls", append ctitle(Logit_corrupcao_Marg) keep(i.tema_bin lava_jato vaza_jato corrupcao_lava_jato_filled corrupcao_vaza_jato_filled) label addtext(Type of Crime FE, YES, Subject FE, YES, Judicial District FE, YES , Year Trend, YES)

*------------------- regressao Logit Resultados (acordo = Condenado) -------------------* 

clear
import delimited E:\artigo3\dados_logit_crime_final.csv, encoding(utf8)
set matsize 10000

encode tema, generate(tema_bin)
encode comarca, generate(comarca_bin)
encode assunto, generate(assunto_bin)
encode periodo_ajustado, generate(periodo_ajustado_bin)

logit resultado i.ano lava_jato vaza_jato i.comarca_bin i.assunto_bin corrupcao_lava_jato_filled corrupcao_vaza_jato_filled, rob
margins, dydx(lava_jato vaza_jato corrupcao_lava_jato_filled corrupcao_vaza_jato_filled) post
outreg2 using "E:\artigo3\logit_marg_crime_2.xls", replace ctitle(Logit_corrupcao_Marg) keep(i.tema_bin lava_jato vaza_jato corrupcao_lava_jato_filled corrupcao_vaza_jato_filled) label addtext(Type of Crime FE, NO, Subject FE, YES, Judicial District FE, YES , Year Trend, YES)

logit resultado i.ano lava_jato vaza_jato i.tema_bin i.comarca_bin corrupcao_lava_jato_filled corrupcao_vaza_jato_filled, rob
margins, dydx(i.tema_bin lava_jato vaza_jato corrupcao_lava_jato_filled corrupcao_vaza_jato_filled) post
outreg2 using "E:\artigo3\logit_marg_crime_2.xls", append ctitle(Logit_corrupcao_Marg) keep(i.tema_bin lava_jato vaza_jato corrupcao_lava_jato_filled corrupcao_vaza_jato_filled) label addtext(Type of Crime FE, YES, Subject FE, NO, Judicial District FE, YES , Year Trend, YES)

logit resultado i.ano lava_jato vaza_jato i.tema_bin i.assunto_bin corrupcao_lava_jato_filled corrupcao_vaza_jato_filled, rob
margins, dydx(i.tema_bin lava_jato vaza_jato corrupcao_lava_jato_filled corrupcao_vaza_jato_filled) post
outreg2 using "E:\artigo3\logit_marg_crime_2.xls", append ctitle(Logit_corrupcao_Marg) keep(i.tema_bin lava_jato vaza_jato corrupcao_lava_jato_filled corrupcao_vaza_jato_filled) label addtext(Type of Crime FE, YES, Subject FE, YES, Judicial District FE, NO , Year Trend, YES)

logit resultado i.ano lava_jato vaza_jato i.tema_bin i.comarca_bin i.assunto_bin corrupcao_lava_jato_filled corrupcao_vaza_jato_filled, rob
margins, dydx(i.tema_bin lava_jato vaza_jato corrupcao_lava_jato_filled corrupcao_vaza_jato_filled) post
outreg2 using "E:\artigo3\logit_marg_crime_2.xls", append ctitle(Logit_corrupcao_Marg) keep(i.tema_bin lava_jato vaza_jato corrupcao_lava_jato_filled corrupcao_vaza_jato_filled) label addtext(Type of Crime FE, YES, Subject FE, YES, Judicial District FE, YES , Year Trend, NO)

logit resultado i.ano lava_jato vaza_jato i.tema_bin i.comarca_bin i.assunto_bin corrupcao_lava_jato_filled corrupcao_vaza_jato_filled, rob
margins, dydx(i.tema_bin lava_jato vaza_jato corrupcao_lava_jato_filled corrupcao_vaza_jato_filled) post
outreg2 using "E:\artigo3\logit_marg_crime_2.xls", append ctitle(Logit_corrupcao_Marg) keep(i.tema_bin lava_jato vaza_jato corrupcao_lava_jato_filled corrupcao_vaza_jato_filled) label addtext(Type of Crime FE, YES, Subject FE, YES, Judicial District FE, YES , Year Trend, YES)

*------------------- regressao Logit Resultados (acordo = Condenado) -------------------* 

clear
import delimited E:\artigo3\dados_logit_final.csv, encoding(utf8)
set matsize 10000

encode tema, generate(tema_bin)
encode comarca, generate(comarca_bin)
encode assunto, generate(assunto_bin)
encode periodo_ajustado, generate(periodo_ajustado_bin)

logit resultado ano lava_jato vaza_jato i.comarca_bin i.assunto_bin corrupcao_lava_jato_filled corrupcao_vaza_jato_filled, rob
margins, dydx(ano lava_jato vaza_jato corrupcao_lava_jato_filled corrupcao_vaza_jato_filled) post
outreg2 using "E:\artigo3\logit_marg.xls", replace ctitle(Logit_corrupcao_Marg) keep(ano i.tema_bin lava_jato vaza_jato corrupcao_lava_jato_filled corrupcao_vaza_jato_filled) label addtext(Type of Crime FE, NO, Subject FE, YES, Judicial District FE, YES , Year Trend, YES)

logit resultado ano lava_jato vaza_jato i.tema_bin i.comarca_bin corrupcao_lava_jato_filled corrupcao_vaza_jato_filled, rob
margins, dydx(ano i.tema_bin lava_jato vaza_jato corrupcao_lava_jato_filled corrupcao_vaza_jato_filled) post
outreg2 using "E:\artigo3\logit_marg.xls", append ctitle(Logit_corrupcao_Marg) keep(ano i.tema_bin lava_jato vaza_jato corrupcao_lava_jato_filled corrupcao_vaza_jato_filled) label addtext(Type of Crime FE, YES, Subject FE, NO, Judicial District FE, YES , Year Trend, YES)

logit resultado ano lava_jato vaza_jato i.tema_bin i.assunto_bin corrupcao_lava_jato_filled corrupcao_vaza_jato_filled, rob
margins, dydx(ano i.tema_bin lava_jato vaza_jato corrupcao_lava_jato_filled corrupcao_vaza_jato_filled) post
outreg2 using "E:\artigo3\logit_marg.xls", append ctitle(Logit_corrupcao_Marg) keep(ano i.tema_bin lava_jato vaza_jato corrupcao_lava_jato_filled corrupcao_vaza_jato_filled) label addtext(Type of Crime FE, YES, Subject FE, YES, Judicial District FE, NO , Year Trend, YES)

logit resultado ano lava_jato vaza_jato i.tema_bin i.comarca_bin i.assunto_bin corrupcao_lava_jato_filled corrupcao_vaza_jato_filled, rob
margins, dydx(ano i.tema_bin lava_jato vaza_jato corrupcao_lava_jato_filled corrupcao_vaza_jato_filled) post
outreg2 using "E:\artigo3\logit_marg.xls", append ctitle(Logit_corrupcao_Marg) keep(ano i.tema_bin lava_jato vaza_jato corrupcao_lava_jato_filled corrupcao_vaza_jato_filled) label addtext(Type of Crime FE, YES, Subject FE, YES, Judicial District FE, YES , Year Trend, NO)

logit resultado ano lava_jato vaza_jato i.tema_bin i.comarca_bin i.assunto_bin corrupcao_lava_jato_filled corrupcao_vaza_jato_filled, rob
margins, dydx(ano i.tema_bin lava_jato vaza_jato corrupcao_lava_jato_filled corrupcao_vaza_jato_filled) post
outreg2 using "E:\artigo3\logit_marg.xls", append ctitle(Logit_corrupcao_Marg) keep(ano i.tema_bin lava_jato vaza_jato corrupcao_lava_jato_filled corrupcao_vaza_jato_filled) label addtext(Type of Crime FE, YES, Subject FE, YES, Judicial District FE, YES , Year Trend, YES)

*------------------- regressao Logit Resultados (acordo = Condenado) -------------------* 

clear
import delimited E:\artigo3\dados_logit_corrupcao.csv, encoding(utf8)
set matsize 10000

encode tema, generate(tema_bin)
encode comarca, generate(comarca_bin)
encode assunto, generate(assunto_bin)
encode periodo_ajustado, generate(periodo_ajustado_bin)

logit resultado ano lava_jato vaza_jato i.comarca_bin i.assunto_bin corrupcao_lava_jato_filled corrupcao_vaza_jato_filled, rob
margins, dydx(ano lava_jato vaza_jato corrupcao_lava_jato_filled corrupcao_vaza_jato_filled) post
outreg2 using "E:\artigo3\logit_marg_corrupcao.xls", replace ctitle(Logit_corrupcao_Marg) keep(ano i.tema_bin lava_jato vaza_jato corrupcao_lava_jato_filled corrupcao_vaza_jato_filled) label addtext(Type of Crime FE, NO, Subject FE, YES, Judicial District FE, YES , Year Trend, YES)

logit resultado ano lava_jato vaza_jato i.tema_bin i.comarca_bin corrupcao_lava_jato_filled corrupcao_vaza_jato_filled, rob
margins, dydx(ano i.tema_bin lava_jato vaza_jato corrupcao_lava_jato_filled corrupcao_vaza_jato_filled) post
outreg2 using "E:\artigo3\logit_marg_corrupcao.xls", append ctitle(Logit_corrupcao_Marg) keep(ano i.tema_bin lava_jato vaza_jato corrupcao_lava_jato_filled corrupcao_vaza_jato_filled) label addtext(Type of Crime FE, YES, Subject FE, NO, Judicial District FE, YES , Year Trend, YES)

logit resultado ano lava_jato vaza_jato i.tema_bin i.assunto_bin corrupcao_lava_jato_filled corrupcao_vaza_jato_filled, rob
margins, dydx(ano i.tema_bin lava_jato vaza_jato corrupcao_lava_jato_filled corrupcao_vaza_jato_filled) post
outreg2 using "E:\artigo3\logit_marg_corrupcao.xls", append ctitle(Logit_corrupcao_Marg) keep(ano i.tema_bin lava_jato vaza_jato corrupcao_lava_jato_filled corrupcao_vaza_jato_filled) label addtext(Type of Crime FE, YES, Subject FE, YES, Judicial District FE, NO , Year Trend, YES)

logit resultado ano lava_jato vaza_jato i.tema_bin i.comarca_bin i.assunto_bin corrupcao_lava_jato_filled corrupcao_vaza_jato_filled, rob
margins, dydx(ano i.tema_bin lava_jato vaza_jato corrupcao_lava_jato_filled corrupcao_vaza_jato_filled) post
outreg2 using "E:\artigo3\logit_marg_corrupcao.xls", append ctitle(Logit_corrupcao_Marg) keep(ano i.tema_bin lava_jato vaza_jato corrupcao_lava_jato_filled corrupcao_vaza_jato_filled) label addtext(Type of Crime FE, YES, Subject FE, YES, Judicial District FE, YES , Year Trend, NO)

logit resultado ano lava_jato vaza_jato i.tema_bin i.comarca_bin i.assunto_bin corrupcao_lava_jato_filled corrupcao_vaza_jato_filled, rob
margins, dydx(ano i.tema_bin lava_jato vaza_jato corrupcao_lava_jato_filled corrupcao_vaza_jato_filled) post
outreg2 using "E:\artigo3\logit_marg_corrupcao.xls", append ctitle(Logit_corrupcao_Marg) keep(ano i.tema_bin lava_jato vaza_jato corrupcao_lava_jato_filled corrupcao_vaza_jato_filled) label addtext(Type of Crime FE, YES, Subject FE, YES, Judicial District FE, YES , Year Trend, YES)

*------------------- regressao Logit Resultados (acordo = Condenado) -------------------* 

clear
import delimited E:\artigo3\dados_logit_trafico_final.csv, encoding(utf8)
set matsize 10000

encode tema, generate(tema_bin)
encode comarca, generate(comarca_bin)
encode assunto, generate(assunto_bin)
encode periodo_ajustado, generate(periodo_ajustado_bin)

logit resultado ano lava_jato vaza_jato i.comarca_bin i.assunto_bin corrupcao_lava_jato_filled corrupcao_vaza_jato_filled, rob
margins, dydx(ano lava_jato vaza_jato corrupcao_lava_jato_filled corrupcao_vaza_jato_filled) post
outreg2 using "E:\artigo3\logit_marg_trafico.xls", replace ctitle(Logit_corrupcao_Marg) keep(ano i.tema_bin lava_jato vaza_jato corrupcao_lava_jato_filled corrupcao_vaza_jato_filled) label addtext(Type of Crime FE, NO, Subject FE, YES, Judicial District FE, YES , Year Trend, YES)

logit resultado ano lava_jato vaza_jato i.tema_bin i.comarca_bin corrupcao_lava_jato_filled corrupcao_vaza_jato_filled, rob
margins, dydx(ano i.tema_bin lava_jato vaza_jato corrupcao_lava_jato_filled corrupcao_vaza_jato_filled) post
outreg2 using "E:\artigo3\logit_marg_trafico.xls", append ctitle(Logit_corrupcao_Marg) keep(ano i.tema_bin lava_jato vaza_jato corrupcao_lava_jato_filled corrupcao_vaza_jato_filled) label addtext(Type of Crime FE, YES, Subject FE, NO, Judicial District FE, YES , Year Trend, YES)

logit resultado ano lava_jato vaza_jato i.tema_bin i.assunto_bin corrupcao_lava_jato_filled corrupcao_vaza_jato_filled, rob
margins, dydx(ano i.tema_bin lava_jato vaza_jato corrupcao_lava_jato_filled corrupcao_vaza_jato_filled) post
outreg2 using "E:\artigo3\logit_marg_trafico.xls", append ctitle(Logit_corrupcao_Marg) keep(ano i.tema_bin lava_jato vaza_jato corrupcao_lava_jato_filled corrupcao_vaza_jato_filled) label addtext(Type of Crime FE, YES, Subject FE, YES, Judicial District FE, NO , Year Trend, YES)

logit resultado ano lava_jato vaza_jato i.tema_bin i.comarca_bin i.assunto_bin corrupcao_lava_jato_filled corrupcao_vaza_jato_filled, rob
margins, dydx(ano i.tema_bin lava_jato vaza_jato corrupcao_lava_jato_filled corrupcao_vaza_jato_filled) post
outreg2 using "E:\artigo3\logit_marg_trafico.xls", append ctitle(Logit_corrupcao_Marg) keep(ano i.tema_bin lava_jato vaza_jato corrupcao_lava_jato_filled corrupcao_vaza_jato_filled) label addtext(Type of Crime FE, YES, Subject FE, YES, Judicial District FE, YES , Year Trend, NO)

logit resultado ano lava_jato vaza_jato i.tema_bin i.comarca_bin i.assunto_bin corrupcao_lava_jato_filled corrupcao_vaza_jato_filled, rob
margins, dydx(ano i.tema_bin lava_jato vaza_jato corrupcao_lava_jato_filled corrupcao_vaza_jato_filled) post
outreg2 using "E:\artigo3\logit_marg_trafico.xls", append ctitle(Logit_corrupcao_Marg) keep(ano i.tema_bin lava_jato vaza_jato corrupcao_lava_jato_filled corrupcao_vaza_jato_filled) label addtext(Type of Crime FE, YES, Subject FE, YES, Judicial District FE, YES , Year Trend, YES)

*------------------- regressao Logit Resultados (acordo = Condenado) -------------------* 

clear
import delimited E:\artigo3\dados_logit_crime_final.csv, encoding(utf8)
set matsize 10000

encode tema, generate(tema_bin)
encode comarca, generate(comarca_bin)
encode assunto, generate(assunto_bin)
encode periodo_ajustado, generate(periodo_ajustado_bin)

logit resultado ano lava_jato vaza_jato i.comarca_bin i.assunto_bin corrupcao_lava_jato_filled corrupcao_vaza_jato_filled, rob
margins, dydx(ano lava_jato vaza_jato corrupcao_lava_jato_filled corrupcao_vaza_jato_filled) post
outreg2 using "E:\artigo3\logit_marg_crime.xls", replace ctitle(Logit_corrupcao_Marg) keep(ano i.tema_bin lava_jato vaza_jato corrupcao_lava_jato_filled corrupcao_vaza_jato_filled) label addtext(Type of Crime FE, NO, Subject FE, YES, Judicial District FE, YES , Year Trend, YES)

logit resultado ano lava_jato vaza_jato i.tema_bin i.comarca_bin corrupcao_lava_jato_filled corrupcao_vaza_jato_filled, rob
margins, dydx(ano i.tema_bin lava_jato vaza_jato corrupcao_lava_jato_filled corrupcao_vaza_jato_filled) post
outreg2 using "E:\artigo3\logit_marg_crime.xls", append ctitle(Logit_corrupcao_Marg) keep(ano i.tema_bin lava_jato vaza_jato corrupcao_lava_jato_filled corrupcao_vaza_jato_filled) label addtext(Type of Crime FE, YES, Subject FE, NO, Judicial District FE, YES , Year Trend, YES)

logit resultado ano lava_jato vaza_jato i.tema_bin i.assunto_bin corrupcao_lava_jato_filled corrupcao_vaza_jato_filled, rob
margins, dydx(ano i.tema_bin lava_jato vaza_jato corrupcao_lava_jato_filled corrupcao_vaza_jato_filled) post
outreg2 using "E:\artigo3\logit_marg_crime.xls", append ctitle(Logit_corrupcao_Marg) keep(ano i.tema_bin lava_jato vaza_jato corrupcao_lava_jato_filled corrupcao_vaza_jato_filled) label addtext(Type of Crime FE, YES, Subject FE, YES, Judicial District FE, NO , Year Trend, YES)

logit resultado ano lava_jato vaza_jato i.tema_bin i.comarca_bin i.assunto_bin corrupcao_lava_jato_filled corrupcao_vaza_jato_filled, rob
margins, dydx(ano i.tema_bin lava_jato vaza_jato corrupcao_lava_jato_filled corrupcao_vaza_jato_filled) post
outreg2 using "E:\artigo3\logit_marg_crime.xls", append ctitle(Logit_corrupcao_Marg) keep(ano i.tema_bin lava_jato vaza_jato corrupcao_lava_jato_filled corrupcao_vaza_jato_filled) label addtext(Type of Crime FE, YES, Subject FE, YES, Judicial District FE, YES , Year Trend, NO)

logit resultado ano lava_jato vaza_jato i.tema_bin i.comarca_bin i.assunto_bin corrupcao_lava_jato_filled corrupcao_vaza_jato_filled, rob
margins, dydx(ano i.tema_bin lava_jato vaza_jato corrupcao_lava_jato_filled corrupcao_vaza_jato_filled) post
outreg2 using "E:\artigo3\logit_marg_crime.xls", append ctitle(Logit_corrupcao_Marg) keep(ano i.tema_bin lava_jato vaza_jato corrupcao_lava_jato_filled corrupcao_vaza_jato_filled) label addtext(Type of Crime FE, YES, Subject FE, YES, Judicial District FE, YES , Year Trend, YES)

*----------------------------------------------------------------------------------* 
*-------------------        Logit Dinamico 1.5 Todos Anos       -------------------* 
*----------------------------------------------------------------------------------*

clear
import delimited E:\artigo3\dados_logit_final.csv, encoding(utf8)
set matsize 10000

encode tema, generate(tema_bin)
encode comarca, generate(comarca_bin)
encode assunto, generate(assunto_bin)
encode periodo_ajustado, generate(periodo_ajustado_bin)

logit resultado_robust i.ano i.comarca_bin i.assunto_bin  lava_jato_1 lava_jato_2 lava_jato_3 vaza_jato_1 vaza_jato_2 lava_jato_1_corrupcao lava_jato_2_corrupcao lava_jato_3_corrupcao vaza_jato_1_corrupcao vaza_jato_2_corrupcao, rob
margins, dydx( lava_jato_1 lava_jato_2 lava_jato_3 vaza_jato_1 vaza_jato_2 lava_jato_1_corrupcao lava_jato_2_corrupcao lava_jato_3_corrupcao vaza_jato_1_corrupcao vaza_jato_2_corrupcao) post
outreg2 using "E:\artigo3\logit_marg_2.xls", replace ctitle(Logit_corrupcao_Marg) keep(i.tema_bin  lava_jato_1 lava_jato_2 lava_jato_3 vaza_jato_1 vaza_jato_2 lava_jato_1_corrupcao lava_jato_2_corrupcao lava_jato_3_corrupcao vaza_jato_1_corrupcao vaza_jato_2_corrupcao) label addtext(Type of Crime FE, NO, Subject FE, YES, Judicial District FE, YES , Year Trend, YES)

logit resultado_robust i.ano i.tema_bin i.comarca_bin  lava_jato_1 lava_jato_2 lava_jato_3 vaza_jato_1 vaza_jato_2 lava_jato_1_corrupcao lava_jato_2_corrupcao lava_jato_3_corrupcao vaza_jato_1_corrupcao vaza_jato_2_corrupcao, rob
margins, dydx(i.tema_bin  lava_jato_1 lava_jato_2 lava_jato_3 vaza_jato_1 vaza_jato_2 lava_jato_1_corrupcao lava_jato_2_corrupcao lava_jato_3_corrupcao vaza_jato_1_corrupcao vaza_jato_2_corrupcao) post
outreg2 using "E:\artigo3\logit_marg_2.xls", append ctitle(Logit_corrupcao_Marg) keep(i.tema_bin  lava_jato_1 lava_jato_2 lava_jato_3 vaza_jato_1 vaza_jato_2 lava_jato_1_corrupcao lava_jato_2_corrupcao lava_jato_3_corrupcao vaza_jato_1_corrupcao vaza_jato_2_corrupcao) label addtext(Type of Crime FE, YES, Subject FE, NO, Judicial District FE, YES , Year Trend, YES)

logit resultado_robust i.ano i.tema_bin i.assunto_bin  lava_jato_1 lava_jato_2 lava_jato_3 vaza_jato_1 vaza_jato_2 lava_jato_1_corrupcao lava_jato_2_corrupcao lava_jato_3_corrupcao vaza_jato_1_corrupcao vaza_jato_2_corrupcao, rob
margins, dydx(i.tema_bin  lava_jato_1 lava_jato_2 lava_jato_3 vaza_jato_1 vaza_jato_2 lava_jato_1_corrupcao lava_jato_2_corrupcao lava_jato_3_corrupcao vaza_jato_1_corrupcao vaza_jato_2_corrupcao) post
outreg2 using "E:\artigo3\logit_marg_2.xls", append ctitle(Logit_corrupcao_Marg) keep(i.tema_bin  lava_jato_1 lava_jato_2 lava_jato_3 vaza_jato_1 vaza_jato_2 lava_jato_1_corrupcao lava_jato_2_corrupcao lava_jato_3_corrupcao vaza_jato_1_corrupcao vaza_jato_2_corrupcao) label addtext(Type of Crime FE, YES, Subject FE, YES, Judicial District FE, NO , Year Trend, YES)

logit resultado_robust i.ano i.tema_bin i.comarca_bin i.assunto_bin  lava_jato_1 lava_jato_2 lava_jato_3 vaza_jato_1 vaza_jato_2 lava_jato_1_corrupcao lava_jato_2_corrupcao lava_jato_3_corrupcao vaza_jato_1_corrupcao vaza_jato_2_corrupcao, rob
margins, dydx(i.tema_bin  lava_jato_1 lava_jato_2 lava_jato_3 vaza_jato_1 vaza_jato_2 lava_jato_1_corrupcao lava_jato_2_corrupcao lava_jato_3_corrupcao vaza_jato_1_corrupcao vaza_jato_2_corrupcao) post
outreg2 using "E:\artigo3\logit_marg_2.xls", append ctitle(Logit_corrupcao_Marg) keep(i.tema_bin  lava_jato_1 lava_jato_2 lava_jato_3 vaza_jato_1 vaza_jato_2 lava_jato_1_corrupcao lava_jato_2_corrupcao lava_jato_3_corrupcao vaza_jato_1_corrupcao vaza_jato_2_corrupcao) label addtext(Type of Crime FE, YES, Subject FE, YES, Judicial District FE, YES , Year Trend, NO)

logit resultado_robust i.ano i.tema_bin i.comarca_bin i.assunto_bin  lava_jato_1 lava_jato_2 lava_jato_3 vaza_jato_1 vaza_jato_2 lava_jato_1_corrupcao lava_jato_2_corrupcao lava_jato_3_corrupcao vaza_jato_1_corrupcao vaza_jato_2_corrupcao, rob
margins, dydx(i.tema_bin  lava_jato_1 lava_jato_2 lava_jato_3 vaza_jato_1 vaza_jato_2 lava_jato_1_corrupcao lava_jato_2_corrupcao lava_jato_3_corrupcao vaza_jato_1_corrupcao vaza_jato_2_corrupcao) post
outreg2 using "E:\artigo3\logit_marg_2.xls", append ctitle(Logit_corrupcao_Marg) keep(i.tema_bin  lava_jato_1 lava_jato_2 lava_jato_3 vaza_jato_1 vaza_jato_2 lava_jato_1_corrupcao lava_jato_2_corrupcao lava_jato_3_corrupcao vaza_jato_1_corrupcao vaza_jato_2_corrupcao) label addtext(Type of Crime FE, YES, Subject FE, YES, Judicial District FE, YES , Year Trend, YES)

*------------------- regressao Logit resultado_robusts (acordo = Condenado) -------------------* 

clear
import delimited E:\artigo3\dados_logit_corrupcao_final.csv, encoding(utf8)
set matsize 10000

encode tema, generate(tema_bin)
encode comarca, generate(comarca_bin)
encode assunto, generate(assunto_bin)
encode periodo_ajustado, generate(periodo_ajustado_bin)

logit resultado_robust i.ano i.comarca_bin i.assunto_bin  lava_jato_1 lava_jato_2 lava_jato_3 vaza_jato_1 vaza_jato_2 lava_jato_1_corrupcao lava_jato_2_corrupcao lava_jato_3_corrupcao vaza_jato_1_corrupcao vaza_jato_2_corrupcao, rob
margins, dydx( lava_jato_1 lava_jato_2 lava_jato_3 vaza_jato_1 vaza_jato_2 lava_jato_1_corrupcao lava_jato_2_corrupcao lava_jato_3_corrupcao vaza_jato_1_corrupcao vaza_jato_2_corrupcao ) post
outreg2 using "E:\artigo3\logit_marg_corrupcao_2.xls", replace ctitle(Logit_corrupcao_Marg) keep(i.tema_bin  lava_jato_1 lava_jato_2 lava_jato_3 vaza_jato_1 vaza_jato_2 lava_jato_1_corrupcao lava_jato_2_corrupcao lava_jato_3_corrupcao vaza_jato_1_corrupcao vaza_jato_2_corrupcao) label addtext(Type of Crime FE, NO, Subject FE, YES, Judicial District FE, YES , Year Trend, YES)

logit resultado_robust i.ano i.tema_bin i.comarca_bin  lava_jato_1 lava_jato_2 lava_jato_3 vaza_jato_1 vaza_jato_2 lava_jato_1_corrupcao lava_jato_2_corrupcao lava_jato_3_corrupcao vaza_jato_1_corrupcao vaza_jato_2_corrupcao, rob
margins, dydx(i.tema_bin  lava_jato_1 lava_jato_2 lava_jato_3 vaza_jato_1 vaza_jato_2 lava_jato_1_corrupcao lava_jato_2_corrupcao lava_jato_3_corrupcao vaza_jato_1_corrupcao vaza_jato_2_corrupcao) post
outreg2 using "E:\artigo3\logit_marg_corrupcao_2.xls", append ctitle(Logit_corrupcao_Marg) keep(i.tema_bin  lava_jato_1 lava_jato_2 lava_jato_3 vaza_jato_1 vaza_jato_2 lava_jato_1_corrupcao lava_jato_2_corrupcao lava_jato_3_corrupcao vaza_jato_1_corrupcao vaza_jato_2_corrupcao) label addtext(Type of Crime FE, YES, Subject FE, NO, Judicial District FE, YES , Year Trend, YES)

logit resultado_robust i.ano i.tema_bin i.assunto_bin  lava_jato_1 lava_jato_2 lava_jato_3 vaza_jato_1 vaza_jato_2 lava_jato_1_corrupcao lava_jato_2_corrupcao lava_jato_3_corrupcao vaza_jato_1_corrupcao vaza_jato_2_corrupcao, rob
margins, dydx(i.tema_bin  lava_jato_1 lava_jato_2 lava_jato_3 vaza_jato_1 vaza_jato_2 lava_jato_1_corrupcao lava_jato_2_corrupcao lava_jato_3_corrupcao vaza_jato_1_corrupcao vaza_jato_2_corrupcao) post
outreg2 using "E:\artigo3\logit_marg_corrupcao_2.xls", append ctitle(Logit_corrupcao_Marg) keep(i.tema_bin  lava_jato_1 lava_jato_2 lava_jato_3 vaza_jato_1 vaza_jato_2 lava_jato_1_corrupcao lava_jato_2_corrupcao lava_jato_3_corrupcao vaza_jato_1_corrupcao vaza_jato_2_corrupcao) label addtext(Type of Crime FE, YES, Subject FE, YES, Judicial District FE, NO , Year Trend, YES)

logit resultado_robust i.ano i.tema_bin i.comarca_bin i.assunto_bin  lava_jato_1 lava_jato_2 lava_jato_3 vaza_jato_1 vaza_jato_2 lava_jato_1_corrupcao lava_jato_2_corrupcao lava_jato_3_corrupcao vaza_jato_1_corrupcao vaza_jato_2_corrupcao, rob
margins, dydx(i.tema_bin  lava_jato_1 lava_jato_2 lava_jato_3 vaza_jato_1 vaza_jato_2 lava_jato_1_corrupcao lava_jato_2_corrupcao lava_jato_3_corrupcao vaza_jato_1_corrupcao vaza_jato_2_corrupcao) post
outreg2 using "E:\artigo3\logit_marg_corrupcao_2.xls", append ctitle(Logit_corrupcao_Marg) keep(i.tema_bin  lava_jato_1 lava_jato_2 lava_jato_3 vaza_jato_1 vaza_jato_2 lava_jato_1_corrupcao lava_jato_2_corrupcao lava_jato_3_corrupcao vaza_jato_1_corrupcao vaza_jato_2_corrupcao) label addtext(Type of Crime FE, YES, Subject FE, YES, Judicial District FE, YES , Year Trend, NO)

logit resultado_robust i.ano i.tema_bin i.comarca_bin i.assunto_bin  lava_jato_1 lava_jato_2 lava_jato_3 vaza_jato_1 vaza_jato_2 lava_jato_1_corrupcao lava_jato_2_corrupcao lava_jato_3_corrupcao vaza_jato_1_corrupcao vaza_jato_2_corrupcao, rob
margins, dydx(i.tema_bin  lava_jato_1 lava_jato_2 lava_jato_3 vaza_jato_1 vaza_jato_2 lava_jato_1_corrupcao lava_jato_2_corrupcao lava_jato_3_corrupcao vaza_jato_1_corrupcao vaza_jato_2_corrupcao) post
outreg2 using "E:\artigo3\logit_marg_corrupcao_2.xls", append ctitle(Logit_corrupcao_Marg) keep(i.tema_bin  lava_jato_1 lava_jato_2 lava_jato_3 vaza_jato_1 vaza_jato_2 lava_jato_1_corrupcao lava_jato_2_corrupcao lava_jato_3_corrupcao vaza_jato_1_corrupcao vaza_jato_2_corrupcao) label addtext(Type of Crime FE, YES, Subject FE, YES, Judicial District FE, YES , Year Trend, YES)

*------------------- regressao Logit resultado_robusts (acordo = Condenado) -------------------* 

clear
import delimited E:\artigo3\dados_logit_trafico_final.csv, encoding(utf8)
set matsize 10000

encode tema, generate(tema_bin)
encode comarca, generate(comarca_bin)
encode assunto, generate(assunto_bin)
encode periodo_ajustado, generate(periodo_ajustado_bin)

logit resultado_robust i.ano i.comarca_bin i.assunto_bin  lava_jato_1 lava_jato_2 lava_jato_3 vaza_jato_1 vaza_jato_2 lava_jato_1_corrupcao lava_jato_2_corrupcao lava_jato_3_corrupcao vaza_jato_1_corrupcao vaza_jato_2_corrupcao, rob
margins, dydx( lava_jato_1 lava_jato_2 lava_jato_3 vaza_jato_1 vaza_jato_2 lava_jato_1_corrupcao lava_jato_2_corrupcao lava_jato_3_corrupcao vaza_jato_1_corrupcao vaza_jato_2_corrupcao ) post
outreg2 using "E:\artigo3\logit_marg_trafico_2.xls", replace ctitle(Logit_corrupcao_Marg) keep(i.tema_bin  lava_jato_1 lava_jato_2 lava_jato_3 vaza_jato_1 vaza_jato_2 lava_jato_1_corrupcao lava_jato_2_corrupcao lava_jato_3_corrupcao vaza_jato_1_corrupcao vaza_jato_2_corrupcao) label addtext(Type of Crime FE, NO, Subject FE, YES, Judicial District FE, YES , Year Trend, YES)

logit resultado_robust i.ano i.tema_bin i.comarca_bin  lava_jato_1 lava_jato_2 lava_jato_3 vaza_jato_1 vaza_jato_2 lava_jato_1_corrupcao lava_jato_2_corrupcao lava_jato_3_corrupcao vaza_jato_1_corrupcao vaza_jato_2_corrupcao, rob
margins, dydx(i.tema_bin  lava_jato_1 lava_jato_2 lava_jato_3 vaza_jato_1 vaza_jato_2 lava_jato_1_corrupcao lava_jato_2_corrupcao lava_jato_3_corrupcao vaza_jato_1_corrupcao vaza_jato_2_corrupcao) post
outreg2 using "E:\artigo3\logit_marg_trafico_2.xls", append ctitle(Logit_corrupcao_Marg) keep(i.tema_bin  lava_jato_1 lava_jato_2 lava_jato_3 vaza_jato_1 vaza_jato_2 lava_jato_1_corrupcao lava_jato_2_corrupcao lava_jato_3_corrupcao vaza_jato_1_corrupcao vaza_jato_2_corrupcao) label addtext(Type of Crime FE, YES, Subject FE, NO, Judicial District FE, YES , Year Trend, YES)

logit resultado_robust i.ano i.tema_bin i.assunto_bin  lava_jato_1 lava_jato_2 lava_jato_3 vaza_jato_1 vaza_jato_2 lava_jato_1_corrupcao lava_jato_2_corrupcao lava_jato_3_corrupcao vaza_jato_1_corrupcao vaza_jato_2_corrupcao, rob
margins, dydx(i.tema_bin  lava_jato_1 lava_jato_2 lava_jato_3 vaza_jato_1 vaza_jato_2 lava_jato_1_corrupcao lava_jato_2_corrupcao lava_jato_3_corrupcao vaza_jato_1_corrupcao vaza_jato_2_corrupcao) post
outreg2 using "E:\artigo3\logit_marg_trafico_2.xls", append ctitle(Logit_corrupcao_Marg) keep(i.tema_bin  lava_jato_1 lava_jato_2 lava_jato_3 vaza_jato_1 vaza_jato_2 lava_jato_1_corrupcao lava_jato_2_corrupcao lava_jato_3_corrupcao vaza_jato_1_corrupcao vaza_jato_2_corrupcao) label addtext(Type of Crime FE, YES, Subject FE, YES, Judicial District FE, NO , Year Trend, YES)

logit resultado_robust i.ano i.tema_bin i.comarca_bin i.assunto_bin  lava_jato_1 lava_jato_2 lava_jato_3 vaza_jato_1 vaza_jato_2 lava_jato_1_corrupcao lava_jato_2_corrupcao lava_jato_3_corrupcao vaza_jato_1_corrupcao vaza_jato_2_corrupcao, rob
margins, dydx(i.tema_bin  lava_jato_1 lava_jato_2 lava_jato_3 vaza_jato_1 vaza_jato_2 lava_jato_1_corrupcao lava_jato_2_corrupcao lava_jato_3_corrupcao vaza_jato_1_corrupcao vaza_jato_2_corrupcao) post
outreg2 using "E:\artigo3\logit_marg_trafico_2.xls", append ctitle(Logit_corrupcao_Marg) keep(i.tema_bin  lava_jato_1 lava_jato_2 lava_jato_3 vaza_jato_1 vaza_jato_2 lava_jato_1_corrupcao lava_jato_2_corrupcao lava_jato_3_corrupcao vaza_jato_1_corrupcao vaza_jato_2_corrupcao) label addtext(Type of Crime FE, YES, Subject FE, YES, Judicial District FE, YES , Year Trend, NO)

logit resultado_robust i.ano i.tema_bin i.comarca_bin i.assunto_bin  lava_jato_1 lava_jato_2 lava_jato_3 vaza_jato_1 vaza_jato_2 lava_jato_1_corrupcao lava_jato_2_corrupcao lava_jato_3_corrupcao vaza_jato_1_corrupcao vaza_jato_2_corrupcao, rob
margins, dydx(i.tema_bin  lava_jato_1 lava_jato_2 lava_jato_3 vaza_jato_1 vaza_jato_2 lava_jato_1_corrupcao lava_jato_2_corrupcao lava_jato_3_corrupcao vaza_jato_1_corrupcao vaza_jato_2_corrupcao) post
outreg2 using "E:\artigo3\logit_marg_trafico_2.xls", append ctitle(Logit_corrupcao_Marg) keep(i.tema_bin  lava_jato_1 lava_jato_2 lava_jato_3 vaza_jato_1 vaza_jato_2 lava_jato_1_corrupcao lava_jato_2_corrupcao lava_jato_3_corrupcao vaza_jato_1_corrupcao vaza_jato_2_corrupcao) label addtext(Type of Crime FE, YES, Subject FE, YES, Judicial District FE, YES , Year Trend, YES)

*------------------- regressao Logit resultado_robusts (acordo = Condenado) -------------------* 

clear
import delimited E:\artigo3\dados_logit_crime_final.csv, encoding(utf8)
set matsize 10000

encode tema, generate(tema_bin)
encode comarca, generate(comarca_bin)
encode assunto, generate(assunto_bin)
encode periodo_ajustado, generate(periodo_ajustado_bin)

logit resultado_robust i.ano i.comarca_bin i.assunto_bin  lava_jato_1 lava_jato_2 lava_jato_3 vaza_jato_1 vaza_jato_2 lava_jato_1_corrupcao lava_jato_2_corrupcao lava_jato_3_corrupcao vaza_jato_1_corrupcao vaza_jato_2_corrupcao, rob
margins, dydx(  lava_jato_1 lava_jato_2 lava_jato_3 vaza_jato_1 vaza_jato_2 lava_jato_1_corrupcao lava_jato_2_corrupcao lava_jato_3_corrupcao vaza_jato_1_corrupcao vaza_jato_2_corrupcao) post
outreg2 using "E:\artigo3\logit_marg_crime_2.xls", replace ctitle(Logit_corrupcao_Marg) keep(i.tema_bin  lava_jato_1 lava_jato_2 lava_jato_3 vaza_jato_1 vaza_jato_2 lava_jato_1_corrupcao lava_jato_2_corrupcao lava_jato_3_corrupcao vaza_jato_1_corrupcao vaza_jato_2_corrupcao) label addtext(Type of Crime FE, NO, Subject FE, YES, Judicial District FE, YES , Year Trend, YES)

logit resultado_robust i.ano i.tema_bin i.comarca_bin  lava_jato_1 lava_jato_2 lava_jato_3 vaza_jato_1 vaza_jato_2 lava_jato_1_corrupcao lava_jato_2_corrupcao lava_jato_3_corrupcao vaza_jato_1_corrupcao vaza_jato_2_corrupcao, rob
margins, dydx(i.tema_bin  lava_jato_1 lava_jato_2 lava_jato_3 vaza_jato_1 vaza_jato_2 lava_jato_1_corrupcao lava_jato_2_corrupcao lava_jato_3_corrupcao vaza_jato_1_corrupcao vaza_jato_2_corrupcao) post
outreg2 using "E:\artigo3\logit_marg_crime_2.xls", append ctitle(Logit_corrupcao_Marg) keep(i.tema_bin  lava_jato_1 lava_jato_2 lava_jato_3 vaza_jato_1 vaza_jato_2 lava_jato_1_corrupcao lava_jato_2_corrupcao lava_jato_3_corrupcao vaza_jato_1_corrupcao vaza_jato_2_corrupcao) label addtext(Type of Crime FE, YES, Subject FE, NO, Judicial District FE, YES , Year Trend, YES)

logit resultado_robust i.ano i.tema_bin i.assunto_bin  lava_jato_1 lava_jato_2 lava_jato_3 vaza_jato_1 vaza_jato_2 lava_jato_1_corrupcao lava_jato_2_corrupcao lava_jato_3_corrupcao vaza_jato_1_corrupcao vaza_jato_2_corrupcao, rob
margins, dydx(i.tema_bin  lava_jato_1 lava_jato_2 lava_jato_3 vaza_jato_1 vaza_jato_2 lava_jato_1_corrupcao lava_jato_2_corrupcao lava_jato_3_corrupcao vaza_jato_1_corrupcao vaza_jato_2_corrupcao) post
outreg2 using "E:\artigo3\logit_marg_crime_2.xls", append ctitle(Logit_corrupcao_Marg) keep(i.tema_bin  lava_jato_1 lava_jato_2 lava_jato_3 vaza_jato_1 vaza_jato_2 lava_jato_1_corrupcao lava_jato_2_corrupcao lava_jato_3_corrupcao vaza_jato_1_corrupcao vaza_jato_2_corrupcao) label addtext(Type of Crime FE, YES, Subject FE, YES, Judicial District FE, NO , Year Trend, YES)

logit resultado_robust i.ano i.tema_bin i.comarca_bin i.assunto_bin  lava_jato_1 lava_jato_2 lava_jato_3 vaza_jato_1 vaza_jato_2 lava_jato_1_corrupcao lava_jato_2_corrupcao lava_jato_3_corrupcao vaza_jato_1_corrupcao vaza_jato_2_corrupcao, rob
margins, dydx(i.tema_bin  lava_jato_1 lava_jato_2 lava_jato_3 vaza_jato_1 vaza_jato_2 lava_jato_1_corrupcao lava_jato_2_corrupcao lava_jato_3_corrupcao vaza_jato_1_corrupcao vaza_jato_2_corrupcao) post
outreg2 using "E:\artigo3\logit_marg_crime_2.xls", append ctitle(Logit_corrupcao_Marg) keep(i.tema_bin  lava_jato_1 lava_jato_2 lava_jato_3 vaza_jato_1 vaza_jato_2 lava_jato_1_corrupcao lava_jato_2_corrupcao lava_jato_3_corrupcao vaza_jato_1_corrupcao vaza_jato_2_corrupcao) label addtext(Type of Crime FE, YES, Subject FE, YES, Judicial District FE, YES , Year Trend, NO)

logit resultado_robust i.ano i.tema_bin i.comarca_bin i.assunto_bin  lava_jato_1 lava_jato_2 lava_jato_3 vaza_jato_1 vaza_jato_2 lava_jato_1_corrupcao lava_jato_2_corrupcao lava_jato_3_corrupcao vaza_jato_1_corrupcao vaza_jato_2_corrupcao, rob
margins, dydx(i.tema_bin  lava_jato_1 lava_jato_2 lava_jato_3 vaza_jato_1 vaza_jato_2 lava_jato_1_corrupcao lava_jato_2_corrupcao lava_jato_3_corrupcao vaza_jato_1_corrupcao vaza_jato_2_corrupcao) post
outreg2 using "E:\artigo3\logit_marg_crime_2.xls", append ctitle(Logit_corrupcao_Marg) keep(i.tema_bin  lava_jato_1 lava_jato_2 lava_jato_3 vaza_jato_1 vaza_jato_2 lava_jato_1_corrupcao lava_jato_2_corrupcao lava_jato_3_corrupcao vaza_jato_1_corrupcao vaza_jato_2_corrupcao) label addtext(Type of Crime FE, YES, Subject FE, YES, Judicial District FE, YES , Year Trend, YES)

*------------------- regressao Logit resultado_robusts (acordo = Condenado) -------------------* 

clear
import delimited E:\artigo3\dados_logit_final.csv, encoding(utf8)
set matsize 10000

encode tema, generate(tema_bin)
encode comarca, generate(comarca_bin)
encode assunto, generate(assunto_bin)
encode periodo_ajustado, generate(periodo_ajustado_bin)

logit resultado_robust ano i.comarca_bin i.assunto_bin  lava_jato_1 lava_jato_2 lava_jato_3 vaza_jato_1 vaza_jato_2 lava_jato_1_corrupcao lava_jato_2_corrupcao lava_jato_3_corrupcao vaza_jato_1_corrupcao vaza_jato_2_corrupcao, rob
margins, dydx(ano  lava_jato_1 lava_jato_2 lava_jato_3 vaza_jato_1 vaza_jato_2 lava_jato_1_corrupcao lava_jato_2_corrupcao lava_jato_3_corrupcao vaza_jato_1_corrupcao vaza_jato_2_corrupcao) post
outreg2 using "E:\artigo3\logit_marg.xls", replace ctitle(Logit_corrupcao_Marg) keep(ano i.tema_bin  lava_jato_1 lava_jato_2 lava_jato_3 vaza_jato_1 vaza_jato_2 lava_jato_1_corrupcao lava_jato_2_corrupcao lava_jato_3_corrupcao vaza_jato_1_corrupcao vaza_jato_2_corrupcao) label addtext(Type of Crime FE, NO, Subject FE, YES, Judicial District FE, YES , Year Trend, YES)

logit resultado_robust ano i.tema_bin i.comarca_bin  lava_jato_1 lava_jato_2 lava_jato_3 vaza_jato_1 vaza_jato_2 lava_jato_1_corrupcao lava_jato_2_corrupcao lava_jato_3_corrupcao vaza_jato_1_corrupcao vaza_jato_2_corrupcao, rob
margins, dydx(ano i.tema_bin  lava_jato_1 lava_jato_2 lava_jato_3 vaza_jato_1 vaza_jato_2 lava_jato_1_corrupcao lava_jato_2_corrupcao lava_jato_3_corrupcao vaza_jato_1_corrupcao vaza_jato_2_corrupcao) post
outreg2 using "E:\artigo3\logit_marg.xls", append ctitle(Logit_corrupcao_Marg) keep(ano i.tema_bin  lava_jato_1 lava_jato_2 lava_jato_3 vaza_jato_1 vaza_jato_2 lava_jato_1_corrupcao lava_jato_2_corrupcao lava_jato_3_corrupcao vaza_jato_1_corrupcao vaza_jato_2_corrupcao) label addtext(Type of Crime FE, YES, Subject FE, NO, Judicial District FE, YES , Year Trend, YES)

logit resultado_robust ano i.tema_bin i.assunto_bin  lava_jato_1 lava_jato_2 lava_jato_3 vaza_jato_1 vaza_jato_2 lava_jato_1_corrupcao lava_jato_2_corrupcao lava_jato_3_corrupcao vaza_jato_1_corrupcao vaza_jato_2_corrupcao, rob
margins, dydx(ano i.tema_bin  lava_jato_1 lava_jato_2 lava_jato_3 vaza_jato_1 vaza_jato_2 lava_jato_1_corrupcao lava_jato_2_corrupcao lava_jato_3_corrupcao vaza_jato_1_corrupcao vaza_jato_2_corrupcao) post
outreg2 using "E:\artigo3\logit_marg.xls", append ctitle(Logit_corrupcao_Marg) keep(ano i.tema_bin  lava_jato_1 lava_jato_2 lava_jato_3 vaza_jato_1 vaza_jato_2 lava_jato_1_corrupcao lava_jato_2_corrupcao lava_jato_3_corrupcao vaza_jato_1_corrupcao vaza_jato_2_corrupcao) label addtext(Type of Crime FE, YES, Subject FE, YES, Judicial District FE, NO , Year Trend, YES)

logit resultado_robust ano i.tema_bin i.comarca_bin i.assunto_bin  lava_jato_1 lava_jato_2 lava_jato_3 vaza_jato_1 vaza_jato_2 lava_jato_1_corrupcao lava_jato_2_corrupcao lava_jato_3_corrupcao vaza_jato_1_corrupcao vaza_jato_2_corrupcao, rob
margins, dydx(ano i.tema_bin  lava_jato_1 lava_jato_2 lava_jato_3 vaza_jato_1 vaza_jato_2 lava_jato_1_corrupcao lava_jato_2_corrupcao lava_jato_3_corrupcao vaza_jato_1_corrupcao vaza_jato_2_corrupcao) post
outreg2 using "E:\artigo3\logit_marg.xls", append ctitle(Logit_corrupcao_Marg) keep(ano i.tema_bin  lava_jato_1 lava_jato_2 lava_jato_3 vaza_jato_1 vaza_jato_2 lava_jato_1_corrupcao lava_jato_2_corrupcao lava_jato_3_corrupcao vaza_jato_1_corrupcao vaza_jato_2_corrupcao) label addtext(Type of Crime FE, YES, Subject FE, YES, Judicial District FE, YES , Year Trend, NO)

logit resultado_robust ano i.tema_bin i.comarca_bin i.assunto_bin  lava_jato_1 lava_jato_2 lava_jato_3 vaza_jato_1 vaza_jato_2 lava_jato_1_corrupcao lava_jato_2_corrupcao lava_jato_3_corrupcao vaza_jato_1_corrupcao vaza_jato_2_corrupcao, rob
margins, dydx(ano i.tema_bin  lava_jato_1 lava_jato_2 lava_jato_3 vaza_jato_1 vaza_jato_2 lava_jato_1_corrupcao lava_jato_2_corrupcao lava_jato_3_corrupcao vaza_jato_1_corrupcao vaza_jato_2_corrupcao) post
outreg2 using "E:\artigo3\logit_marg.xls", append ctitle(Logit_corrupcao_Marg) keep(ano i.tema_bin  lava_jato_1 lava_jato_2 lava_jato_3 vaza_jato_1 vaza_jato_2 lava_jato_1_corrupcao lava_jato_2_corrupcao lava_jato_3_corrupcao vaza_jato_1_corrupcao vaza_jato_2_corrupcao) label addtext(Type of Crime FE, YES, Subject FE, YES, Judicial District FE, YES , Year Trend, YES)

*------------------- regressao Logit resultado_robusts (acordo = Condenado) -------------------* 

clear
import delimited E:\artigo3\dados_logit_corrupcao_final.csv, encoding(utf8)
set matsize 10000

encode tema, generate(tema_bin)
encode comarca, generate(comarca_bin)
encode assunto, generate(assunto_bin)
encode periodo_ajustado, generate(periodo_ajustado_bin)

logit resultado_robust ano i.comarca_bin i.assunto_bin  lava_jato_1 lava_jato_2 lava_jato_3 vaza_jato_1 vaza_jato_2 lava_jato_1_corrupcao lava_jato_2_corrupcao lava_jato_3_corrupcao vaza_jato_1_corrupcao vaza_jato_2_corrupcao, rob
margins, dydx(ano  lava_jato_1 lava_jato_2 lava_jato_3 vaza_jato_1 vaza_jato_2 lava_jato_1_corrupcao lava_jato_2_corrupcao lava_jato_3_corrupcao vaza_jato_1_corrupcao vaza_jato_2_corrupcao) post
outreg2 using "E:\artigo3\logit_marg_corrupcao.xls", replace ctitle(Logit_corrupcao_Marg) keep(ano i.tema_bin  lava_jato_1 lava_jato_2 lava_jato_3 vaza_jato_1 vaza_jato_2 lava_jato_1_corrupcao lava_jato_2_corrupcao lava_jato_3_corrupcao vaza_jato_1_corrupcao vaza_jato_2_corrupcao) label addtext(Type of Crime FE, NO, Subject FE, YES, Judicial District FE, YES , Year Trend, YES)

logit resultado_robust ano i.tema_bin i.comarca_bin  lava_jato_1 lava_jato_2 lava_jato_3 vaza_jato_1 vaza_jato_2 lava_jato_1_corrupcao lava_jato_2_corrupcao lava_jato_3_corrupcao vaza_jato_1_corrupcao vaza_jato_2_corrupcao, rob
margins, dydx(ano i.tema_bin  lava_jato_1 lava_jato_2 lava_jato_3 vaza_jato_1 vaza_jato_2 lava_jato_1_corrupcao lava_jato_2_corrupcao lava_jato_3_corrupcao vaza_jato_1_corrupcao vaza_jato_2_corrupcao) post
outreg2 using "E:\artigo3\logit_marg_corrupcao.xls", append ctitle(Logit_corrupcao_Marg) keep(ano i.tema_bin  lava_jato_1 lava_jato_2 lava_jato_3 vaza_jato_1 vaza_jato_2 lava_jato_1_corrupcao lava_jato_2_corrupcao lava_jato_3_corrupcao vaza_jato_1_corrupcao vaza_jato_2_corrupcao) label addtext(Type of Crime FE, YES, Subject FE, NO, Judicial District FE, YES , Year Trend, YES)

logit resultado_robust ano i.tema_bin i.assunto_bin  lava_jato_1 lava_jato_2 lava_jato_3 vaza_jato_1 vaza_jato_2 lava_jato_1_corrupcao lava_jato_2_corrupcao lava_jato_3_corrupcao vaza_jato_1_corrupcao vaza_jato_2_corrupcao, rob
margins, dydx(ano i.tema_bin  lava_jato_1 lava_jato_2 lava_jato_3 vaza_jato_1 vaza_jato_2 lava_jato_1_corrupcao lava_jato_2_corrupcao lava_jato_3_corrupcao vaza_jato_1_corrupcao vaza_jato_2_corrupcao) post
outreg2 using "E:\artigo3\logit_marg_corrupcao.xls", append ctitle(Logit_corrupcao_Marg) keep(ano i.tema_bin  lava_jato_1 lava_jato_2 lava_jato_3 vaza_jato_1 vaza_jato_2 lava_jato_1_corrupcao lava_jato_2_corrupcao lava_jato_3_corrupcao vaza_jato_1_corrupcao vaza_jato_2_corrupcao) label addtext(Type of Crime FE, YES, Subject FE, YES, Judicial District FE, NO , Year Trend, YES)

logit resultado_robust ano i.tema_bin i.comarca_bin i.assunto_bin  lava_jato_1 lava_jato_2 lava_jato_3 vaza_jato_1 vaza_jato_2 lava_jato_1_corrupcao lava_jato_2_corrupcao lava_jato_3_corrupcao vaza_jato_1_corrupcao vaza_jato_2_corrupcao, rob
margins, dydx(ano i.tema_bin  lava_jato_1 lava_jato_2 lava_jato_3 vaza_jato_1 vaza_jato_2 lava_jato_1_corrupcao lava_jato_2_corrupcao lava_jato_3_corrupcao vaza_jato_1_corrupcao vaza_jato_2_corrupcao) post
outreg2 using "E:\artigo3\logit_marg_corrupcao.xls", append ctitle(Logit_corrupcao_Marg) keep(ano i.tema_bin  lava_jato_1 lava_jato_2 lava_jato_3 vaza_jato_1 vaza_jato_2 lava_jato_1_corrupcao lava_jato_2_corrupcao lava_jato_3_corrupcao vaza_jato_1_corrupcao vaza_jato_2_corrupcao) label addtext(Type of Crime FE, YES, Subject FE, YES, Judicial District FE, YES , Year Trend, NO)

logit resultado_robust ano i.tema_bin i.comarca_bin i.assunto_bin  lava_jato_1 lava_jato_2 lava_jato_3 vaza_jato_1 vaza_jato_2 lava_jato_1_corrupcao lava_jato_2_corrupcao lava_jato_3_corrupcao vaza_jato_1_corrupcao vaza_jato_2_corrupcao, rob
margins, dydx(ano i.tema_bin  lava_jato_1 lava_jato_2 lava_jato_3 vaza_jato_1 vaza_jato_2 lava_jato_1_corrupcao lava_jato_2_corrupcao lava_jato_3_corrupcao vaza_jato_1_corrupcao vaza_jato_2_corrupcao) post
outreg2 using "E:\artigo3\logit_marg_corrupcao.xls", append ctitle(Logit_corrupcao_Marg) keep(ano i.tema_bin  lava_jato_1 lava_jato_2 lava_jato_3 vaza_jato_1 vaza_jato_2 lava_jato_1_corrupcao lava_jato_2_corrupcao lava_jato_3_corrupcao vaza_jato_1_corrupcao vaza_jato_2_corrupcao) label addtext(Type of Crime FE, YES, Subject FE, YES, Judicial District FE, YES , Year Trend, YES)

*------------------- regressao Logit resultado_robusts (acordo = Condenado) -------------------* 

clear
import delimited E:\artigo3\dados_logit_trafico_final.csv, encoding(utf8)
set matsize 10000

encode tema, generate(tema_bin)
encode comarca, generate(comarca_bin)
encode assunto, generate(assunto_bin)
encode periodo_ajustado, generate(periodo_ajustado_bin)

logit resultado_robust ano i.comarca_bin i.assunto_bin  lava_jato_1 lava_jato_2 lava_jato_3 vaza_jato_1 vaza_jato_2 lava_jato_1_corrupcao lava_jato_2_corrupcao lava_jato_3_corrupcao vaza_jato_1_corrupcao vaza_jato_2_corrupcao, rob
margins, dydx(ano  lava_jato_1 lava_jato_2 lava_jato_3 vaza_jato_1 vaza_jato_2 lava_jato_1_corrupcao lava_jato_2_corrupcao lava_jato_3_corrupcao vaza_jato_1_corrupcao vaza_jato_2_corrupcao) post
outreg2 using "E:\artigo3\logit_marg_trafico.xls", replace ctitle(Logit_corrupcao_Marg) keep(ano i.tema_bin  lava_jato_1 lava_jato_2 lava_jato_3 vaza_jato_1 vaza_jato_2 lava_jato_1_corrupcao lava_jato_2_corrupcao lava_jato_3_corrupcao vaza_jato_1_corrupcao vaza_jato_2_corrupcao) label addtext(Type of Crime FE, NO, Subject FE, YES, Judicial District FE, YES , Year Trend, YES)

logit resultado_robust ano i.tema_bin i.comarca_bin  lava_jato_1 lava_jato_2 lava_jato_3 vaza_jato_1 vaza_jato_2 lava_jato_1_corrupcao lava_jato_2_corrupcao lava_jato_3_corrupcao vaza_jato_1_corrupcao vaza_jato_2_corrupcao, rob
margins, dydx(ano i.tema_bin  lava_jato_1 lava_jato_2 lava_jato_3 vaza_jato_1 vaza_jato_2 lava_jato_1_corrupcao lava_jato_2_corrupcao lava_jato_3_corrupcao vaza_jato_1_corrupcao vaza_jato_2_corrupcao) post
outreg2 using "E:\artigo3\logit_marg_trafico.xls", append ctitle(Logit_corrupcao_Marg) keep(ano i.tema_bin  lava_jato_1 lava_jato_2 lava_jato_3 vaza_jato_1 vaza_jato_2 lava_jato_1_corrupcao lava_jato_2_corrupcao lava_jato_3_corrupcao vaza_jato_1_corrupcao vaza_jato_2_corrupcao) label addtext(Type of Crime FE, YES, Subject FE, NO, Judicial District FE, YES , Year Trend, YES)

logit resultado_robust ano i.tema_bin i.assunto_bin  lava_jato_1 lava_jato_2 lava_jato_3 vaza_jato_1 vaza_jato_2 lava_jato_1_corrupcao lava_jato_2_corrupcao lava_jato_3_corrupcao vaza_jato_1_corrupcao vaza_jato_2_corrupcao, rob
margins, dydx(ano i.tema_bin  lava_jato_1 lava_jato_2 lava_jato_3 vaza_jato_1 vaza_jato_2 lava_jato_1_corrupcao lava_jato_2_corrupcao lava_jato_3_corrupcao vaza_jato_1_corrupcao vaza_jato_2_corrupcao) post
outreg2 using "E:\artigo3\logit_marg_trafico.xls", append ctitle(Logit_corrupcao_Marg) keep(ano i.tema_bin  lava_jato_1 lava_jato_2 lava_jato_3 vaza_jato_1 vaza_jato_2 lava_jato_1_corrupcao lava_jato_2_corrupcao lava_jato_3_corrupcao vaza_jato_1_corrupcao vaza_jato_2_corrupcao) label addtext(Type of Crime FE, YES, Subject FE, YES, Judicial District FE, NO , Year Trend, YES)

logit resultado_robust ano i.tema_bin i.comarca_bin i.assunto_bin  lava_jato_1 lava_jato_2 lava_jato_3 vaza_jato_1 vaza_jato_2 lava_jato_1_corrupcao lava_jato_2_corrupcao lava_jato_3_corrupcao vaza_jato_1_corrupcao vaza_jato_2_corrupcao, rob
margins, dydx(ano i.tema_bin  lava_jato_1 lava_jato_2 lava_jato_3 vaza_jato_1 vaza_jato_2 lava_jato_1_corrupcao lava_jato_2_corrupcao lava_jato_3_corrupcao vaza_jato_1_corrupcao vaza_jato_2_corrupcao) post
outreg2 using "E:\artigo3\logit_marg_trafico.xls", append ctitle(Logit_corrupcao_Marg) keep(ano i.tema_bin  lava_jato_1 lava_jato_2 lava_jato_3 vaza_jato_1 vaza_jato_2 lava_jato_1_corrupcao lava_jato_2_corrupcao lava_jato_3_corrupcao vaza_jato_1_corrupcao vaza_jato_2_corrupcao) label addtext(Type of Crime FE, YES, Subject FE, YES, Judicial District FE, YES , Year Trend, NO)

logit resultado_robust ano i.tema_bin i.comarca_bin i.assunto_bin  lava_jato_1 lava_jato_2 lava_jato_3 vaza_jato_1 vaza_jato_2 lava_jato_1_corrupcao lava_jato_2_corrupcao lava_jato_3_corrupcao vaza_jato_1_corrupcao vaza_jato_2_corrupcao, rob
margins, dydx(ano i.tema_bin  lava_jato_1 lava_jato_2 lava_jato_3 vaza_jato_1 vaza_jato_2 lava_jato_1_corrupcao lava_jato_2_corrupcao lava_jato_3_corrupcao vaza_jato_1_corrupcao vaza_jato_2_corrupcao) post
outreg2 using "E:\artigo3\logit_marg_trafico.xls", append ctitle(Logit_corrupcao_Marg) keep(ano i.tema_bin  lava_jato_1 lava_jato_2 lava_jato_3 vaza_jato_1 vaza_jato_2 lava_jato_1_corrupcao lava_jato_2_corrupcao lava_jato_3_corrupcao vaza_jato_1_corrupcao vaza_jato_2_corrupcao) label addtext(Type of Crime FE, YES, Subject FE, YES, Judicial District FE, YES , Year Trend, YES)

*------------------- regressao Logit resultado_robusts (acordo = Condenado) -------------------* 

clear
import delimited E:\artigo3\dados_logit_crime_final.csv, encoding(utf8)
set matsize 10000

encode tema, generate(tema_bin)
encode comarca, generate(comarca_bin)
encode assunto, generate(assunto_bin)
encode periodo_ajustado, generate(periodo_ajustado_bin)

logit resultado_robust ano i.comarca_bin i.assunto_bin  lava_jato_1 lava_jato_2 lava_jato_3 vaza_jato_1 vaza_jato_2 lava_jato_1_corrupcao lava_jato_2_corrupcao lava_jato_3_corrupcao vaza_jato_1_corrupcao vaza_jato_2_corrupcao, rob
margins, dydx(ano  lava_jato_1 lava_jato_2 lava_jato_3 vaza_jato_1 vaza_jato_2 lava_jato_1_corrupcao lava_jato_2_corrupcao lava_jato_3_corrupcao vaza_jato_1_corrupcao vaza_jato_2_corrupcao) post
outreg2 using "E:\artigo3\logit_marg_crime.xls", replace ctitle(Logit_corrupcao_Marg) keep(ano i.tema_bin  lava_jato_1 lava_jato_2 lava_jato_3 vaza_jato_1 vaza_jato_2 lava_jato_1_corrupcao lava_jato_2_corrupcao lava_jato_3_corrupcao vaza_jato_1_corrupcao vaza_jato_2_corrupcao) label addtext(Type of Crime FE, NO, Subject FE, YES, Judicial District FE, YES , Year Trend, YES)

logit resultado_robust ano i.tema_bin i.comarca_bin  lava_jato_1 lava_jato_2 lava_jato_3 vaza_jato_1 vaza_jato_2 lava_jato_1_corrupcao lava_jato_2_corrupcao lava_jato_3_corrupcao vaza_jato_1_corrupcao vaza_jato_2_corrupcao, rob
margins, dydx(ano i.tema_bin  lava_jato_1 lava_jato_2 lava_jato_3 vaza_jato_1 vaza_jato_2 lava_jato_1_corrupcao lava_jato_2_corrupcao lava_jato_3_corrupcao vaza_jato_1_corrupcao vaza_jato_2_corrupcao) post
outreg2 using "E:\artigo3\logit_marg_crime.xls", append ctitle(Logit_corrupcao_Marg) keep(ano i.tema_bin  lava_jato_1 lava_jato_2 lava_jato_3 vaza_jato_1 vaza_jato_2 lava_jato_1_corrupcao lava_jato_2_corrupcao lava_jato_3_corrupcao vaza_jato_1_corrupcao vaza_jato_2_corrupcao) label addtext(Type of Crime FE, YES, Subject FE, NO, Judicial District FE, YES , Year Trend, YES)

logit resultado_robust ano i.tema_bin i.assunto_bin  lava_jato_1 lava_jato_2 lava_jato_3 vaza_jato_1 vaza_jato_2 lava_jato_1_corrupcao lava_jato_2_corrupcao lava_jato_3_corrupcao vaza_jato_1_corrupcao vaza_jato_2_corrupcao, rob
margins, dydx(ano i.tema_bin  lava_jato_1 lava_jato_2 lava_jato_3 vaza_jato_1 vaza_jato_2 lava_jato_1_corrupcao lava_jato_2_corrupcao lava_jato_3_corrupcao vaza_jato_1_corrupcao vaza_jato_2_corrupcao) post
outreg2 using "E:\artigo3\logit_marg_crime.xls", append ctitle(Logit_corrupcao_Marg) keep(ano i.tema_bin  lava_jato_1 lava_jato_2 lava_jato_3 vaza_jato_1 vaza_jato_2 lava_jato_1_corrupcao lava_jato_2_corrupcao lava_jato_3_corrupcao vaza_jato_1_corrupcao vaza_jato_2_corrupcao) label addtext(Type of Crime FE, YES, Subject FE, YES, Judicial District FE, NO , Year Trend, YES)

logit resultado_robust ano i.tema_bin i.comarca_bin i.assunto_bin  lava_jato_1 lava_jato_2 lava_jato_3 vaza_jato_1 vaza_jato_2 lava_jato_1_corrupcao lava_jato_2_corrupcao lava_jato_3_corrupcao vaza_jato_1_corrupcao vaza_jato_2_corrupcao, rob
margins, dydx(ano i.tema_bin  lava_jato_1 lava_jato_2 lava_jato_3 vaza_jato_1 vaza_jato_2 lava_jato_1_corrupcao lava_jato_2_corrupcao lava_jato_3_corrupcao vaza_jato_1_corrupcao vaza_jato_2_corrupcao) post
outreg2 using "E:\artigo3\logit_marg_crime.xls", append ctitle(Logit_corrupcao_Marg) keep(ano i.tema_bin  lava_jato_1 lava_jato_2 lava_jato_3 vaza_jato_1 vaza_jato_2 lava_jato_1_corrupcao lava_jato_2_corrupcao lava_jato_3_corrupcao vaza_jato_1_corrupcao vaza_jato_2_corrupcao) label addtext(Type of Crime FE, YES, Subject FE, YES, Judicial District FE, YES , Year Trend, NO)

logit resultado_robust ano i.tema_bin i.comarca_bin i.assunto_bin  lava_jato_1 lava_jato_2 lava_jato_3 vaza_jato_1 vaza_jato_2 lava_jato_1_corrupcao lava_jato_2_corrupcao lava_jato_3_corrupcao vaza_jato_1_corrupcao vaza_jato_2_corrupcao, rob
margins, dydx(ano i.tema_bin  lava_jato_1 lava_jato_2 lava_jato_3 vaza_jato_1 vaza_jato_2 lava_jato_1_corrupcao lava_jato_2_corrupcao lava_jato_3_corrupcao vaza_jato_1_corrupcao vaza_jato_2_corrupcao) post
outreg2 using "E:\artigo3\logit_marg_crime.xls", append ctitle(Logit_corrupcao_Marg) keep(ano i.tema_bin  lava_jato_1 lava_jato_2 lava_jato_3 vaza_jato_1 vaza_jato_2 lava_jato_1_corrupcao lava_jato_2_corrupcao lava_jato_3_corrupcao vaza_jato_1_corrupcao vaza_jato_2_corrupcao) label addtext(Type of Crime FE, YES, Subject FE, YES, Judicial District FE, YES , Year Trend, YES)
