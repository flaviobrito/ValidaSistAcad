library(readxl)

ADMINISTRACAO_UFF_VRE_final <- read_excel("~/Desenv_Flavio/Valida_SistACAD/data/ADMINISTRACAO_UFF_VRE_final.xlsx", 
                                              skip = 3)

ADMINISTRACAO_UFRRJ_final <- read_excel("~/Desenv_Flavio/Valida_SistACAD/data/ADMINISTRACAO_UFRRJ_final.xls", 
                                        col_types = c("numeric", "text", "numeric", 
                                                      "date", "text", "text", "text", "text", 
                                                      "text", "numeric", "numeric", "numeric", 
                                                      "numeric", "numeric"), skip = 3)


HISTORIA_UNIRIO_final <- read_excel("~/Desenv_Flavio/Valida_SistACAD/data/HISTORIA_UNIRIO_final.xls", 
                                    skip = 3)


















# #load_files <- function () {
# ##Read files named xyz1111.xls, xyz2222.xlsx, etc.
# filenames <- list.files(path="./",pattern="*.xlsx|*.xls")
# ##Create list of data frame names without the "xls" part 
# names <-sub('\\..*$', '', basename(filenames))
# 
# ###Load all files
# for(i in names){
#   assign(i, read_excel(filenames,col_names=c(rep("character",3),"date",rep("factor",5)), skip = 3))
# }
# }
# #read_excel(filenames[2],col_names=c(rep("character",3),"date",rep("factor",5),rep("character",7)), skip = 3)
