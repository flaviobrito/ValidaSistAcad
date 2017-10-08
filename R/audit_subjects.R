#Audit subjects
library(dplyr)
cdf_columns <- c("Matrícula_Universidade","Nome do Aluno","CPF", "Sigla da Universidade","Curso Original","Código da Disciplina CEDERJ","Nome da Disciplina", "Sigla ou nome do pólo escolhido")
df <- ADMINISTRACAO_UFF_VRE_final

df = rename(df, Nome_do_Aluno = `Nome do Aluno`)
df = rename(df, Sigla_da_Universidade = `Sigla da Universidade`)
df = rename(df, Curso_Original = `Curso Original`)


audit_subjects <- function(df,col_df){
  df_new <-  select(df,col_df) 
  df_new <- arrange(df_new,c("Matrícula_Universidade","Nome do Aluno"))
  return(df_new)
}

df_adm <- NULL
df_adm <-audit_subjects(ADMINISTRACAO_UFF_VRE_final,one_of(cdf_columns))

df_new <-  select(ADMINISTRACAO_UFF_VRE_final,cdf_columns) 
df_new <- arrange(df_new,Matrícula_Universidade,'Nome do Aluno')
