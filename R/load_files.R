library(readxl)

ADMINISTRACAO_UFF_VRE_final <-
  read_excel("~/Desenv_Flavio/Valida_SistACAD/data/ADMINISTRACAO_UFF_VRE_final.xlsx",
             skip = 3)

ADMINISTRACAO_UFRRJ_final <-
  read_excel(
    "~/Desenv_Flavio/Valida_SistACAD/data/ADMINISTRACAO_UFRRJ_final.xls",
    col_types = c(
      "numeric",
      "text",
      "numeric",
      "date",
      "text",
      "text",
      "text",
      "text",
      "text",
      "numeric",
      "numeric",
      "numeric",
      "numeric",
      "numeric"
    ),
    skip = 3
  )


HISTORIA_UNIRIO_final <-
  read_excel("~/Desenv_Flavio/Valida_SistACAD/data/HISTORIA_UNIRIO_final.xls",
             skip = 3)













