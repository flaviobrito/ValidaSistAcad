library(dplyr)
#' Audit students' subject - Business Rules
#'
#' @param df 
#'
#' @return
#' @export
#'
#' @examples
#' error_df <-audit_subjects(df)
#' 

audit_subjects <- function(df){
  col_df <- c("Matrícula_Universidade",
              "Nome_Aluno",
              "CPF", 
              "Sigla_Universidade",
              "Curso_Original",
              "Codigo_Disciplina_CEDERJ",
              "Nome_Disciplina", 
              "Sigla_Polo")
  df <- rename(df, Nome_Aluno = `Nome do Aluno`)
  df <- rename(df, Sigla_Universidade = `Sigla da Universidade`)
  df <- rename(df, Curso_Original = `Curso Original`)
  df <- rename(df, Codigo_Disciplina_CEDERJ = `Código da Disciplina CEDERJ`)
  df <- rename(df, Nome_Disciplina = `Nome da Disciplina`)
  df <- rename(df, Sigla_Polo =  `Sigla ou nome do pólo escolhido`)
  
  df <-  select(df,col_df) 
  
  casos_aud <- df %>%
    group_by(df$Matrícula_Universidade,df$Nome_Aluno) %>%
    tally
  frequent <- casos_aud %>%
    mutate(status = ifelse(n>=2,T,F)) %>%
    filter(status==T)
  out <- frequent
  return(out)
}




