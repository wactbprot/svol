v2 <- read.table("data/ventil-kreis_2.txt"
               , skip=2
               , sep=" "
               , row.names=NULL)
par(mfrow=c(3,1))

## Radius Abgleich bringt auch nichts

sn <- c("SCN1","SCN3","SCN4","SCN5")

is1 <- which(v2[,1] == sn[1])
is2 <- which(v2[,1] == sn[2])
is3 <- which(v2[,1] == sn[3])
is4 <- which(v2[,1] == sn[4])

mt <- as.matrix(v2[,3:5])

r <- sqrt(mt[, 1]^2 + mt[, 2]^2)
z <- mt[, 3]

rs1 <- r[is1]
rs2 <- r[is2]
rs3 <- r[is3]
rs4 <- r[is4]

zs1 <- z[is1]
zs2 <- z[is2]
zs3 <- z[is3]
zs4 <- z[is4]


## jusrierbereiche

plot(zs1)
bzs <- 20
bze <- 30
brs <- 20
bre <- 30

abline(v=c(bzs,bze), col=2)
abline(v=c(brs,bre), col=2)

plot(rs1, zs1)
points(rs2, zs2, col=2)
points(rs3, zs3, col=3)
points(rs4, zs4, col=4)

## gemeinsamer startpunkt
N <- 10
rs1r <- rs1[brs:bre]
rs2r <- rs2[brs:bre]
rs3r <- rs3[brs:bre]
rs4r <- rs4[brs:bre]

zs1r <- zs1[bzs:bze]
zs2r <- zs2[bzs:bze]
zs3r <- zs3[bzs:bze]
zs4r <- zs4[bzs:bze]

R <- mean(c(rs1r,rs2r,rs3r,rs4r))
Z <- mean(c(zs1r,zs2r,zs3r,zs4r))

points(R,Z, pch=3, cex=2)

dz1 <- mean(Z - zs1r)
dz2 <- mean(Z - zs2r)
dz3 <- mean(Z - zs3r)
dz4 <- mean(Z - zs4r)
dr1 <- mean(R - rs1r)
dr2 <- mean(R - rs2r)
dr3 <- mean(R - rs3r)
dr4 <- mean(R - rs4r)


plot(  rs1 + dr1, zs1 )
points(rs2 + dr2, zs2 , col=2)
points(rs3 + dr3, zs3 , col=3)
points(rs4 + dr4, zs4 , col=4)
