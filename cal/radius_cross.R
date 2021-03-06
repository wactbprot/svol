t1 <- read.table("data/ventil-sitz_1.txt"
               , skip=2
               , sep=" "
               , row.names=NULL)

it1 <- which(t1[,1] == "SCN1")
it4 <- which(t1[,1] == "SCN4")
it5 <- which(t1[,1] == "SCN5")


mt <- as.matrix(t1[,3:5])

r <- sqrt(mt[, 1]^2 + mt[, 2]^2)
z <- mt[, 3]

brs <- 8.25
bre <- 8.75

## steigung wird nicht erreicht
i <- which(r > brs & r < bre)

plot(r,z)
points(r[i], z[i], col=2)


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
i <- which(r > brs & r < bre)
zs1 <- z[is1]

plot(rs1, zs1)
points(rs1[i], zs1[i], col=2)
