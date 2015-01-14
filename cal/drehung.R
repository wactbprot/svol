library("rgl")
source("d-fn.R")

v1 <- read.table("data/ventil-kreis_1.txt"
               , skip=2
               , sep=" "
               , row.names=NULL)

#bsp drehung 3° um x-Achse:
rgl.points(dx(as.matrix(v2[, 3:5]), 3), col=2)

#bsp drehung 3° um y-Achse:
rgl.points(dy(as.matrix(v2[, 3:5]), 3), col=2)
