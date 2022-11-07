clear
import delimited E:\artigo3\dados_logit_final_2.csv, encoding(utf8)
set matsize 10000
set maxiter 1000

encode tema, generate(tema_bin)
encode comarca, generate(comarca_bin)
encode assunto, generate(assunto_bin)
encode periodo_ajustado, generate(periodo_ajustado_bin)

mlogit resultado_mult i.ano lava_jato vaza_jato i.tema_bin i.comarca_bin i.assunto_bin corrupcao_lava_jato_filled corrupcao_vaza_jato_filled, iter(1000) rob
margins, dydx(i.tema_bin lava_jato vaza_jato corrupcao_lava_jato_filled corrupcao_vaza_jato_filled) post
outreg2 using "E:\artigo3\logit_marg_mult.xls", replace ctitle(Logit_corrupcao_Marg) keep(i.tema_bin lava_jato vaza_jato corrupcao_lava_jato_filled corrupcao_vaza_jato_filled) label addtext(Type of Crime FE, YES, Subject FE, YES, Judicial District FE, YES , Year Trend, YES)

mlogit resultado_mult ano lava_jato vaza_jato i.tema_bin i.comarca_bin i.assunto_bin corrupcao_lava_jato_filled corrupcao_vaza_jato_filled, iter(1000) rob
margins, dydx(ano i.tema_bin lava_jato vaza_jato corrupcao_lava_jato_filled corrupcao_vaza_jato_filled) post
outreg2 using "E:\artigo3\logit_marg_mult.xls", append ctitle(Logit_corrupcao_Marg) keep(ano i.tema_bin lava_jato vaza_jato corrupcao_lava_jato_filled corrupcao_vaza_jato_filled) label addtext(Type of Crime FE, YES, Subject FE, YES, Judicial District FE, YES , Year Trend, YES)

mlogit resultado_mult i.ano i.tema_bin i.comarca_bin i.assunto_bin  lava_jato_1 lava_jato_2 lava_jato_3 vaza_jato_1 vaza_jato_2 lava_jato_1_corrupcao lava_jato_2_corrupcao lava_jato_3_corrupcao vaza_jato_1_corrupcao vaza_jato_2_corrupcao, iter(1000) rob
margins, dydx(i.tema_bin  lava_jato_1 lava_jato_2 lava_jato_3 vaza_jato_1 vaza_jato_2 lava_jato_1_corrupcao lava_jato_2_corrupcao lava_jato_3_corrupcao vaza_jato_1_corrupcao vaza_jato_2_corrupcao) post
outreg2 using "E:\artigo3\logit_marg_mult.xls", append ctitle(Logit_corrupcao_Marg) keep(i.tema_bin  lava_jato_1 lava_jato_2 lava_jato_3 vaza_jato_1 vaza_jato_2 lava_jato_1_corrupcao lava_jato_2_corrupcao lava_jato_3_corrupcao vaza_jato_1_corrupcao vaza_jato_2_corrupcao) label addtext(Type of Crime FE, YES, Subject FE, YES, Judicial District FE, YES , Year Trend, YES)

mlogit resultado_mult ano i.tema_bin i.comarca_bin i.assunto_bin  lava_jato_1 lava_jato_2 lava_jato_3 vaza_jato_1 vaza_jato_2 lava_jato_1_corrupcao lava_jato_2_corrupcao lava_jato_3_corrupcao vaza_jato_1_corrupcao vaza_jato_2_corrupcao, iter(1000) rob
margins, dydx(ano i.tema_bin  lava_jato_1 lava_jato_2 lava_jato_3 vaza_jato_1 vaza_jato_2 lava_jato_1_corrupcao lava_jato_2_corrupcao lava_jato_3_corrupcao vaza_jato_1_corrupcao vaza_jato_2_corrupcao) post
outreg2 using "E:\artigo3\logit_marg_mult.xls", append ctitle(Logit_corrupcao_Marg) keep(ano i.tema_bin  lava_jato_1 lava_jato_2 lava_jato_3 vaza_jato_1 vaza_jato_2 lava_jato_1_corrupcao lava_jato_2_corrupcao lava_jato_3_corrupcao vaza_jato_1_corrupcao vaza_jato_2_corrupcao) label addtext(Type of Crime FE, YES, Subject FE, YES, Judicial District FE, YES , Year Trend, YES)
