library("rgl")
v2 <- read.table("data/ventil-kreis_2.txt"
               , skip=2
               , sep=" "
               , row.names = NULL)
v1 <- read.table("data/ventil-kreis_1.txt"
               , skip=2
               , sep=" "
               , row.names=NULL)
rgl.close()
rgl.open() 
rgl.bg( sphere = FALSE
     , color=c("white","black")
     , back="lines")

axes3d(box = TRUE
     , col=1
       )
title3d(xlab= "x in mm"
      , ylab= "y in mm"
      , zlab= "z in mm"
      , pos=c(10,10,0)
      , col=1
        )

## Ursprung
rgl.points(0,0,0
         , col=1)

## Bezugskreis
rgl.points(v1[, 3]
         , v1[, 4]
         , v1[, 5]
         , col=1)

## Scans
scns <- c("SCN1"
        , "SCN3"
        , "SCN4"
        , "SCN5"
        , "SCN6"
        , "SCN7")
col=1
for (scn in scns){
    i <- which(v2[,1] == scn)
    rgl.points(v2[i, 3]
             , v2[i, 4]
             , v2[i, 5]
             , col=col
               )
    col<- col+1
}

s1 <- read.table("data/ventil-sitz_1.txt", skip=2, sep=" ", row.names=NULL)
rgl.points(s1[, 3], s1[, 4], -s1[, 5] - 40, add=TRUE, col=1)
