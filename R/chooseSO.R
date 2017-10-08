
#'Configura o diretório de trabalho
#'Configure Workdir
#' @param sovar 
#'
#' @return
#' @export
#'
#' @examples
#' chooseSO("M")
chooseSO <- function(sovar){
  switch(sovar,
         W={print("Configurando o diretório para Windows")
           print(paste0("Diretório:",pathso[1]))
           dir.create(pathso[1], showWarnings = FALSE)
           setwd(pathso[1])
           
         },
         M={print("Configurando o diretório para Mac")
           print(paste0("Diretório:",pathso[2]))
           dir.create(pathso[2], showWarnings = FALSE)
           setwd(pathso[2])
         },
         stop("Enter something that switches me!")
  )
}