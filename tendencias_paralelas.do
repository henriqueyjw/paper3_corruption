

clear
import delimited E:\artigo3\dados_logit_tendencias_paralelas_2.csv, encoding(utf8)
set matsize 10000

encode tema, generate(tema_bin)
encode comarca, generate(comarca_bin)
encode assunto, generate(assunto_bin)
encode periodo_ajustado, generate(periodo_ajustado_bin)

logit resultado ano i.tema_bin i.comarca_bin i.assunto_bin, rob
margins, dydx(ano i.tema_bin) post
outreg2 using "E:\artigo3\logit_tendencias_paralelas.xls", replace ctitle(All Samples) keep(ano i.tema_bin) label addtext(Type of Crime FE, YES, Subject FE, YES, Judicial District FE, YES , Year Trend, YES)

logit resultado ano i.comarca_bin i.assunto_bin if tema_bin == 1, rob 
margins, dydx(ano) post
outreg2 using "E:\artigo3\logit_tendencias_paralelas.xls", append ctitle(Corruption) keep(ano) label addtext(Type of Crime FE, NO, Subject FE, YES, Judicial District FE, YES , Year Trend, YES)

logit resultado ano i.comarca_bin i.assunto_bin if tema_bin == 2, rob 
margins, dydx(ano) post
outreg2 using "E:\artigo3\logit_tendencias_paralelas.xls", append ctitle(Other Crimes) keep(ano) label addtext(Type of Crime FE, NO, Subject FE, YES, Judicial District FE, YES , Year Trend, YES)

logit resultado ano i.comarca_bin i.assunto_bin if tema_bin == 3, rob 
margins, dydx(ano) post
outreg2 using "E:\artigo3\logit_tendencias_paralelas.xls", append ctitle(Trafficking) keep(ano) label addtext(Type of Crime FE, NO, Subject FE, YES, Judicial District FE, YES , Year Trend, YES)

logit resultado_rob ano i.tema_bin i.comarca_bin i.assunto_bin, rob
margins, dydx(ano i.tema_bin) post
outreg2 using "E:\artigo3\logit_tendencias_paralelas_rob.xls", replace ctitle(All Samples) keep(ano i.tema_bin) label addtext(Type of Crime FE, YES, Subject FE, YES, Judicial District FE, YES , Year Trend, YES)

logit resultado_rob ano i.comarca_bin i.assunto_bin if tema_bin == 1, rob 
margins, dydx(ano) post
outreg2 using "E:\artigo3\logit_tendencias_paralelas_rob.xls", append ctitle(Corruption) keep(ano) label addtext(Type of Crime FE, NO, Subject FE, YES, Judicial District FE, YES , Year Trend, YES)

logit resultado_rob ano i.comarca_bin i.assunto_bin if tema_bin == 2, rob 
margins, dydx(ano) post
outreg2 using "E:\artigo3\logit_tendencias_paralelas_rob.xls", append ctitle(Other Crimes) keep(ano) label addtext(Type of Crime FE, NO, Subject FE, YES, Judicial District FE, YES , Year Trend, YES)

logit resultado_rob ano i.comarca_bin i.assunto_bin if tema_bin == 3, rob 
margins, dydx(ano) post
outreg2 using "E:\artigo3\logit_tendencias_paralelas_rob.xls", append ctitle(Trafficking) keep(ano) label addtext(Type of Crime FE, NO, Subject FE, YES, Judicial District FE, YES , Year Trend, YES)


