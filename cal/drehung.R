library("rgl")
source("cal/d-fn.R")
        
v2 <- read.table("data/ventil-kreis_2.txt"
               , skip=2
               , sep=" "
               , row.names=NULL)
par(mfrow=c(3,1))

## Drehung bringt nichts

sn <- c("SCN1","SCN3","SCN4","SCN5")

is1 <- which(v2[,1] == sn[1])
is3 <- which(v2[,1] == sn[2])
is4 <- which(v2[,1] == sn[3])
is5 <- which(v2[,1] == sn[4])

mt <- as.matrix(v2[,3:5])

rs1 <- sqrt(mt[is1, 1]^2 + mt[is1, 2]^2) ## r = sqrt(x^2+y^2)  
zs1 <- mt[is1, 3]
rs3 <- sqrt(mt[is3, 1]^2 + mt[is3, 2]^2) ## r = sqrt(x^2+y^2)  
zs3 <- mt[is3, 3]
rs4 <- sqrt(mt[is4, 1]^2 + mt[is4, 2]^2) ## r = sqrt(x^2+y^2)  
zs4 <- mt[is4, 3]
rs5 <- sqrt(mt[is5, 1]^2 + mt[is5, 2]^2) ## r = sqrt(x^2+y^2)  
zs5 <- mt[is5, 3]

plot(rs1, zs1)
points(rs3, zs3, col=2)
points(rs4, zs4, col=3)
points(rs5, zs5, col=4)

ddmt <- dy(mt, 0.1)
 
rs1 <- sqrt(ddmt[is1, 1]^2 + ddmt[is1, 2]^2) ## r = sqrt(x^2+y^2)  
zs1 <- ddmt[is1, 3]
rs3 <- sqrt(ddmt[is3, 1]^2 + ddmt[is3, 2]^2) ## r = sqrt(x^2+y^2)  
zs3 <- ddmt[is3, 3]
rs4 <- sqrt(ddmt[is4, 1]^2 + ddmt[is4, 2]^2) ## r = sqrt(x^2+y^2)  
zs4 <- ddmt[is4, 3]
rs5 <- sqrt(ddmt[is5, 1]^2 + ddmt[is5, 2]^2) ## r = sqrt(x^2+y^2)  
zs5 <- ddmt[is5, 3]

plot(rs1, zs1)
points(rs3, zs3, col=2)
points(rs4, zs4, col=3)
points(rs5, zs5, col=4)


dmt <- dx(mt, 0.29)
 
rs1 <- sqrt(dmt[is1, 1]^2 + dmt[is1, 2]^2) ## r = sqrt(x^2+y^2)  
zs1 <- dmt[is1, 3]
rs3 <- sqrt(dmt[is3, 1]^2 + dmt[is3, 2]^2) ## r = sqrt(x^2+y^2)  
zs3 <- dmt[is3, 3]
rs4 <- sqrt(dmt[is4, 1]^2 + dmt[is4, 2]^2) ## r = sqrt(x^2+y^2)  
zs4 <- dmt[is4, 3]
rs5 <- sqrt(dmt[is5, 1]^2 + dmt[is5, 2]^2) ## r = sqrt(x^2+y^2)  
zs5 <- dmt[is5, 3]

plot(rs1, zs1)
points(rs3, zs3, col=2)
points(rs4, zs4, col=3)
points(rs5, zs5, col=4)

                                        #



