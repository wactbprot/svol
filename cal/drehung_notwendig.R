v2 <- read.table("data/ventil-kreis_2.txt"
               , skip=2
               , sep=" "
               , row.names = NULL)
v1 <- read.table("data/ventil-kreis_1.txt"
               , skip=2
               , sep=" "
               , row.names=NULL)


scns <- c("SCN1"
        , "SCN3"
        , "SCN4"
        , "SCN5"
        , "SCN6"
        , "SCN7")

par(mfrow=c(2,4))
for(no in 1:4){ 
scn <-scns[no] 
i <- which(v2[,1] == scn)

plot(v1[, 5]
   , v1[, 4]
   , xlim=c(9.5, 9.7)
   , main= "z-y- Komponente"
   , xlab = "z in mm"
   , ylab = "y in mm");
points(v2[i, 5]
     , v2[i, 4]
     , col=no + 1)

plot(v1[, 5]
   , v1[, 3]
   , xlim=c(9.5, 9.7)
   , main= "z-x- Komponente"
   , xlab = "z in mm"
   , ylab = "x in mm");
points(v2[i, 5]
     , v2[i, 3]
     , col=no + 1)
}
par(mfrow=c(1,1))
