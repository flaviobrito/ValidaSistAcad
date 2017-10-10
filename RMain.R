#load libraries
library(openxlsx)
library(readr)
library(dplyr)


#Setup Enviroment
#Set default directory
homedir <-"../Desenv_Flavio/Valida_SistACAD/"
setwd(homedir)
#Load Functions
source("./R/chooseSO.R")

#Set data path
pathso <- c("c:/VALIDA_SISTACAD/data","~/Desenv_Flavio/Valida_SistACAD/data")
chooseSO("M")

#load data
#
# Get the files names
library(readxl)
files <- data.frame(arq=list.files(pattern="*.xlsx|*.xls"))
files <- list.files(pattern="*.xlsx|*.xls")
dat <- lapply(files,read_excel, skip=3)

#Load files
load_files()

#Validade Business Rules
############################
#
# Rule 01 - Students's subscriptions error when number of 
#           subjects is more or equal than 3
########################################################
df_adm__uff_rn1 <-audit_subjects(ADMINISTRACAO_UFF_VRE_final)

df_adm__uffrj_rn1 <-audit_subjects(ADMINISTRACAO_UFRRJ_final)

df_hist_unirio_rn1 <-audit_subjects(HISTORIA_UNIRIO_final)
