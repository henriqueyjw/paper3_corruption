clear
import excel "E:\artigo3\dados_resultado_final.xlsx", sheet("Sheet1") firstrow
set matsize 10000

encode periodo, generate(dummy_periodo_bin)
encode comarca, generate(comarca_bin)
encode assunto, generate(assunto_bin)
encode mes, generate(mes_bin)

*------------------- regressao principal resultados-------------------* 
reg multiplo_corrupcao_interesse i.mes_bin i.comarca_bin ano i.dummy_periodo_bin,rob
outreg2 using "E:\artigo3\resultados\linear_resultado.xls", replace ctitle(Results) keep(ano i.dummy_periodo_bin) label addtext(Subject FE, NO, Month FE, YES, Judicial District FE, YES , Year Trend, YES)
reg multiplo_corrupcao_interesse i.assunto_bin i.comarca_bin ano i.dummy_periodo_bin,rob
outreg2 using "E:\artigo3\resultados\linear_resultado.xls", append ctitle(Results) keep(i.assunto_bin ano i.dummy_periodo_bin) label addtext(Subject FE, YES, Month FE, NO, Judicial District FE, YES , Year Trend, YES)
reg multiplo_corrupcao_interesse i.assunto_bin i.mes_bin ano i.dummy_periodo_bin,rob
outreg2 using "E:\artigo3\resultados\linear_resultado.xls", append ctitle(Results) keep(i.assunto_bin ano i.dummy_periodo_bin) label addtext(Subject FE, YES, Month FE, YES, Judicial District FE, NO , Year Trend, YES)
reg multiplo_corrupcao_interesse i.assunto_bin i.mes_bin i.comarca_bin ano i.dummy_periodo_bin,rob
outreg2 using "E:\artigo3\resultados\linear_resultado.xls", append ctitle(Results) keep(i.assunto_bin ano i.dummy_periodo_bin) label addtext(Subject FE, YES, Month FE, YES, Judicial District FE, YES , Year Trend, YES)

*------------------- regressao comparativas resultados -------------------* 
reg multiplo_corrupcao i.mes_bin i.comarca_bin ano i.dummy_periodo_bin,rob
outreg2 using "E:\artigo3\resultados\linear_resultado_corrupcao.xls", replace ctitle(Results) keep(ano i.dummy_periodo_bin) label addtext(Subject FE, NO, Month FE, YES, Judicial District FE, YES , Year Trend, YES)
reg multiplo_corrupcao i.assunto_bin i.comarca_bin ano i.dummy_periodo_bin,rob
outreg2 using "E:\artigo3\resultados\linear_resultado_corrupcao.xls", append ctitle(Results) keep(i.assunto_bin ano i.dummy_periodo_bin) label addtext(Subject FE, YES, Month FE, NO, Judicial District FE, YES , Year Trend, YES)
reg multiplo_corrupcao i.assunto_bin i.mes_bin ano i.dummy_periodo_bin,rob
outreg2 using "E:\artigo3\resultados\linear_resultado_corrupcao.xls", append ctitle(Results) keep(i.assunto_bin ano i.dummy_periodo_bin) label addtext(Subject FE, YES, Month FE, YES, Judicial District FE, NO , Year Trend, YES)
reg multiplo_corrupcao i.assunto_bin i.mes_bin i.comarca_bin ano i.dummy_periodo_bin,rob
outreg2 using "E:\artigo3\resultados\linear_resultado_corrupcao.xls", append ctitle(Results) keep(i.assunto_bin ano i.dummy_periodo_bin) label addtext(Subject FE, YES, Month FE, YES, Judicial District FE, YES , Year Trend, YES)

reg multiplo_trafico i.mes_bin i.comarca_bin ano i.dummy_periodo_bin,rob
outreg2 using "E:\artigo3\resultados\linear_resultado_trafico.xls", replace ctitle(Results) keep(ano i.dummy_periodo_bin) label addtext(Subject FE, NO, Month FE, YES, Judicial District FE, YES , Year Trend, YES)
reg multiplo_trafico i.assunto_bin i.comarca_bin ano i.dummy_periodo_bin,rob
outreg2 using "E:\artigo3\resultados\linear_resultado_trafico.xls", append ctitle(Results) keep(i.assunto_bin ano i.dummy_periodo_bin) label addtext(Subject FE, YES, Month FE, NO, Judicial District FE, YES , Year Trend, YES)
reg multiplo_trafico i.assunto_bin i.mes_bin ano i.dummy_periodo_bin,rob
outreg2 using "E:\artigo3\resultados\linear_resultado_trafico.xls", append ctitle(Results) keep(i.assunto_bin ano i.dummy_periodo_bin) label addtext(Subject FE, YES, Month FE, YES, Judicial District FE, NO , Year Trend, YES)
reg multiplo_trafico i.assunto_bin i.mes_bin i.comarca_bin ano i.dummy_periodo_bin,rob
outreg2 using "E:\artigo3\resultados\linear_resultado_trafico.xls", append ctitle(Results) keep(i.assunto_bin ano i.dummy_periodo_bin) label addtext(Subject FE, YES, Month FE, YES, Judicial District FE, YES , Year Trend, YES)

reg multiplo_crime i.mes_bin i.comarca_bin ano i.dummy_periodo_bin,rob
outreg2 using "E:\artigo3\resultados\linear_resultado_crime.xls", replace ctitle(Results) keep(ano i.dummy_periodo_bin) label addtext(Subject FE, NO, Month FE, YES, Judicial District FE, YES , Year Trend, YES)
reg multiplo_crime i.assunto_bin i.comarca_bin ano i.dummy_periodo_bin,rob
outreg2 using "E:\artigo3\resultados\linear_resultado_crime.xls", append ctitle(Results) keep(i.assunto_bin ano i.dummy_periodo_bin) label addtext(Subject FE, YES, Month FE, NO, Judicial District FE, YES , Year Trend, YES)
reg multiplo_crime i.assunto_bin i.mes_bin ano i.dummy_periodo_bin,rob
outreg2 using "E:\artigo3\resultados\linear_resultado_crime.xls", append ctitle(Results) keep(i.assunto_bin ano i.dummy_periodo_bin) label addtext(Subject FE, YES, Month FE, YES, Judicial District FE, NO , Year Trend, YES)
reg multiplo_crime i.assunto_bin i.mes_bin i.comarca_bin ano i.dummy_periodo_bin,rob
outreg2 using "E:\artigo3\resultados\linear_resultado_crime.xls", append ctitle(Results) keep(i.assunto_bin ano i.dummy_periodo_bin) label addtext(Subject FE, YES, Month FE, YES, Judicial District FE, YES , Year Trend, YES)

*------------------- regressao principal acordos-------------------* 
reg acordo_corrupcao_interesse i.mes_bin i.comarca_bin ano i.dummy_periodo_bin,rob
outreg2 using "E:\artigo3\resultados\linear_acordo.xls", replace ctitle(Results) keep(ano i.dummy_periodo_bin) label addtext(Subject FE, NO, Month FE, YES, Judicial District FE, YES , Year Trend, YES)
reg acordo_corrupcao_interesse i.assunto_bin i.comarca_bin ano i.dummy_periodo_bin,rob
outreg2 using "E:\artigo3\resultados\linear_acordo.xls", append ctitle(Results) keep(i.assunto_bin ano i.dummy_periodo_bin) label addtext(Subject FE, YES, Month FE, NO, Judicial District FE, YES , Year Trend, YES)
reg acordo_corrupcao_interesse i.assunto_bin i.mes_bin ano i.dummy_periodo_bin,rob
outreg2 using "E:\artigo3\resultados\linear_acordo.xls", append ctitle(Results) keep(i.assunto_bin ano i.dummy_periodo_bin) label addtext(Subject FE, YES, Month FE, YES, Judicial District FE, NO , Year Trend, YES)
reg acordo_corrupcao_interesse i.assunto_bin i.mes_bin i.comarca_bin ano i.dummy_periodo_bin,rob
outreg2 using "E:\artigo3\resultados\linear_acordo.xls", append ctitle(Results) keep(i.assunto_bin ano i.dummy_periodo_bin) label addtext(Subject FE, YES, Month FE, YES, Judicial District FE, YES , Year Trend, YES)

*------------------- regressao comparativas resultados -------------------* 
  
reg acordo_corrupcao i.mes_bin i.comarca_bin ano i.dummy_periodo_bin,rob
outreg2 using "E:\artigo3\resultados\linear_acordo_corrupcao.xls", replace ctitle(Results) keep(ano i.dummy_periodo_bin) label addtext(Subject FE, NO, Month FE, YES, Judicial District FE, YES , Year Trend, YES)
reg acordo_corrupcao i.assunto_bin i.comarca_bin ano i.dummy_periodo_bin,rob
outreg2 using "E:\artigo3\resultados\linear_acordo_corrupcao.xls", append ctitle(Results) keep(i.assunto_bin ano i.dummy_periodo_bin) label addtext(Subject FE, YES, Month FE, NO, Judicial District FE, YES , Year Trend, YES)
reg acordo_corrupcao i.assunto_bin i.mes_bin ano i.dummy_periodo_bin,rob
outreg2 using "E:\artigo3\resultados\linear_acordo_corrupcao.xls", append ctitle(Results) keep(i.assunto_bin ano i.dummy_periodo_bin) label addtext(Subject FE, YES, Month FE, YES, Judicial District FE, NO , Year Trend, YES)
reg acordo_corrupcao i.assunto_bin i.mes_bin i.comarca_bin ano i.dummy_periodo_bin,rob
outreg2 using "E:\artigo3\resultados\linear_acordo_corrupcao.xls", append ctitle(Results) keep(i.assunto_bin ano i.dummy_periodo_bin) label addtext(Subject FE, YES, Month FE, YES, Judicial District FE, YES , Year Trend, YES)

reg acordo_trafico i.mes_bin i.comarca_bin ano i.dummy_periodo_bin,rob
outreg2 using "E:\artigo3\resultados\linear_acordo_trafico.xls", replace ctitle(Results) keep(ano i.dummy_periodo_bin) label addtext(Subject FE, NO, Month FE, YES, Judicial District FE, YES , Year Trend, YES)
reg acordo_trafico i.assunto_bin i.comarca_bin ano i.dummy_periodo_bin,rob
outreg2 using "E:\artigo3\resultados\linear_acordo_trafico.xls", append ctitle(Results) keep(i.assunto_bin ano i.dummy_periodo_bin) label addtext(Subject FE, YES, Month FE, NO, Judicial District FE, YES , Year Trend, YES)
reg acordo_trafico i.assunto_bin i.mes_bin ano i.dummy_periodo_bin,rob
outreg2 using "E:\artigo3\resultados\linear_acordo_trafico.xls", append ctitle(Results) keep(i.assunto_bin ano i.dummy_periodo_bin) label addtext(Subject FE, YES, Month FE, YES, Judicial District FE, NO , Year Trend, YES)
reg acordo_trafico i.assunto_bin i.mes_bin i.comarca_bin ano i.dummy_periodo_bin,rob
outreg2 using "E:\artigo3\resultados\linear_acordo_trafico.xls", append ctitle(Results) keep(i.assunto_bin ano i.dummy_periodo_bin) label addtext(Subject FE, YES, Month FE, YES, Judicial District FE, YES , Year Trend, YES)

reg acordo_crime i.mes_bin i.comarca_bin ano i.dummy_periodo_bin,rob
outreg2 using "E:\artigo3\resultados\linear_acordo_crime.xls", replace ctitle(Results) keep(ano i.dummy_periodo_bin) label addtext(Subject FE, NO, Month FE, YES, Judicial District FE, YES , Year Trend, YES)
reg acordo_crime i.assunto_bin i.comarca_bin ano i.dummy_periodo_bin,rob
outreg2 using "E:\artigo3\resultados\linear_acordo_crime.xls", append ctitle(Results) keep(i.assunto_bin ano i.dummy_periodo_bin) label addtext(Subject FE, YES, Month FE, NO, Judicial District FE, YES , Year Trend, YES)
reg acordo_crime i.assunto_bin i.mes_bin ano i.dummy_periodo_bin,rob
outreg2 using "E:\artigo3\resultados\linear_acordo_crime.xls", append ctitle(Results) keep(i.assunto_bin ano i.dummy_periodo_bin) label addtext(Subject FE, YES, Month FE, YES, Judicial District FE, NO , Year Trend, YES)
reg acordo_crime i.assunto_bin i.mes_bin i.comarca_bin ano i.dummy_periodo_bin,rob
outreg2 using "E:\artigo3\resultados\linear_acordo_crime.xls", append ctitle(Results) keep(i.assunto_bin ano i.dummy_periodo_bin) label addtext(Subject FE, YES, Month FE, YES, Judicial District FE, YES , Year Trend, YES)

*------------------- regressao Logit Resultados (acordo = Condenado) -------------------* 

clear
import excel "E:\artigo3\dados_logit_corrupcao.xlsx", sheet("Sheet1") firstrow
set matsize 10000

encode tema, generate(tema_bin)
encode comarca, generate(comarca_bin)
encode assunto, generate(assunto_bin)
encode periodo_ajustado, generate(periodo_ajustado_bin)

logit resultado ano i.tema_bin i.comarca_bin i.assunto_bin lava_jato vaza_jato corrupcao_periodo_lava_jato_fill corrupcao_periodo_vaza_jato_fill, rob
margins, dydx(i.tema_bin i.assunto_bin lava_jato vaza_jato corrupcao_periodo_lava_jato_fill corrupcao_periodo_vaza_jato_fill) post
outreg2 using "E:\artigo3\logit_trafico_marg.xls", replace ctitle(Logit_corrupcao_Marg) keep(i.tema_bin i.assunto_bin lava_jato vaza_jato corrupcao_periodo_lava_jato_fill corrupcao_periodo_vaza_jato_fill)

clear
import excel "E:\artigo3\dados_logit_trafico.xlsx", sheet("Sheet1") firstrow
set matsize 10000

encode tema, generate(tema_bin)
encode comarca, generate(comarca_bin)
encode assunto, generate(assunto_bin)
encode periodo_ajustado, generate(periodo_ajustado_bin)

logit resultado ano i.tema_bin i.comarca_bin i.assunto_bin lava_jato vaza_jato corrupcao_periodo_lava_jato_fill corrupcao_periodo_vaza_jato_fill, rob
margins, dydx(i.tema_bin i.assunto_bin i.periodo_ajustado_bin corrupcao_periodo_lava_jato_fill corrupcao_periodo_vaza_jato_fill) post
outreg2 using "E:\artigo3\logit_trafico_marg.xls", append ctitle(Logit_corrupcao_Marg) keep(i.tema_bin i.tema_bin i.assunto_bin i.periodo_ajustado_bin corrupcao_periodo_lava_jato_fill corrupcao_periodo_vaza_jato_fill)

clear
import excel "E:\artigo3\dados_logit_crime.xlsx", sheet("Sheet1") firstrow
set matsize 10000

encode tema, generate(tema_bin)
encode comarca, generate(comarca_bin)
encode assunto, generate(assunto_bin)
encode periodo_ajustado, generate(periodo_ajustado_bin)

logit resultado ano i.tema_bin i.comarca_bin i.assunto_bin i.periodo_ajustado_bin corrupcao_periodo_lava_jato_fill corrupcao_periodo_vaza_jato_fill, rob
margins, dydx(i.tema_bin i.periodo_ajustado_bin corrupcao_periodo_lava_jato_fill corrupcao_periodo_vaza_jato_fill) post
outreg2 using "E:\artigo3\logit_trafico_marg.xls", append ctitle(Logit_corrupcao_Marg) keep(i.tema_bin i.tema_bin i.assunto_bin i.periodo_ajustado_bin corrupcao_periodo_lava_jato_fill corrupcao_periodo_vaza_jato_fill)

*------------------- regressao Logit Resultados (acordo = Condenado) -------------------* 

clear
import excel "E:\artigo3\dados_logit_corrupcao.xlsx", sheet("Sheet1") firstrow
set matsize 10000

encode tema, generate(tema_bin)
encode comarca, generate(comarca_bin)
encode assunto, generate(assunto_bin)
encode periodo_ajustado, generate(periodo_ajustado_bin)

reg resultado ano i.comarca_bin i.assunto_bin i.periodo_ajustado_bin corrupcao_periodo_lava_jato_fill corrupcao_periodo_vaza_jato_fill, rob
outreg2 using "E:\artigo3\linear_corrupcao.xls", replace ctitle(Logit_corrupcao_Marg) keep(i.tema_bin i.assunto_bin i.periodo_ajustado_bin corrupcao_periodo_lava_jato_fill corrupcao_periodo_vaza_jato_fill)

clear
import excel "E:\artigo3\dados_logit_trafico.xlsx", sheet("Sheet1") firstrow
set matsize 10000

encode tema, generate(tema_bin)
encode comarca, generate(comarca_bin)
encode assunto, generate(assunto_bin)
encode periodo_ajustado, generate(periodo_ajustado_bin)

reg resultado ano i.tema_bin i.comarca_bin i.assunto_bin i.periodo_ajustado_bin corrupcao_periodo_lava_jato_fill corrupcao_periodo_vaza_jato_fill, rob
outreg2 using "E:\artigo3\linear_corrupcao.xls", append ctitle(Logit_corrupcao_Marg) keep(i.tema_bin i.assunto_bin i.periodo_ajustado_bin corrupcao_periodo_lava_jato_fill corrupcao_periodo_vaza_jato_fill)

clear
import excel "E:\artigo3\dados_logit_crime.xlsx", sheet("Sheet1") firstrow
set matsize 10000

encode tema, generate(tema_bin)
encode comarca, generate(comarca_bin)
encode assunto, generate(assunto_bin)
encode periodo_ajustado, generate(periodo_ajustado_bin)

reg resultado ano i.tema_bin i.comarca_bin i.assunto_bin i.periodo_ajustado_bin corrupcao_periodo_lava_jato_fill corrupcao_periodo_vaza_jato_fill, rob
outreg2 using "E:\artigo3\linear_corrupcao.xls", append ctitle(Logit_corrupcao_Marg) keep(i.tema_bin i.assunto_bin i.periodo_ajustado_bin corrupcao_periodo_lava_jato_fill corrupcao_periodo_vaza_jato_fill)

*------------------- regressao Logit Resultados (acordo = Condenado) -------------------* 

clear
import delimited E:\artigo3\dados_logit.csv, encoding(utf8)
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
import delimited E:\artigo3\dados_logit_trafico.csv, encoding(utf8)
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
import delimited E:\artigo3\dados_logit_crime.csv, encoding(utf8)
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
import delimited E:\artigo3\dados_logit.csv, encoding(utf8)
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
import delimited E:\artigo3\dados_logit_trafico.csv, encoding(utf8)
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
import delimited E:\artigo3\dados_logit_crime.csv, encoding(utf8)
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

