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
#tbl = lapply(files, read_excel,skip=4) %>% bind_rows()
dat <- lapply(files,read_excel, skip=3)

