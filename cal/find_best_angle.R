library("rgl")
source("cal/d-fn.R")

v2 <- read.table("data/ventil-kreis_2.txt"
               , skip=2
               , sep=" "
               , row.names=NULL)

sn <- c("SCN1","SCN3","SCN4","SCN5")

is1 <- which(v2[,1] == sn[1])
is3 <- which(v2[,1] == sn[2])
is4 <- which(v2[,1] == sn[3])
is5 <- which(v2[,1] == sn[4])


k <- as.matrix(v2[,3:5])
w <- seq(0.2, 0.3, 0.001)
N <- length(w)

dr <- matrix(ncol=N, nrow=N)
dz <- matrix(ncol=N, nrow=N)

for(j in 1:N){
    vd2 <- dy(vd2,w[j])
    
    for(i in 1:N){
        
        vd2 <- dx(k, w[i])
        
        rs1 <- sqrt(vd2[is1, 1]^2 + vd2[is1, 2]^2) ## r = sqrt(x^2+y^2)  
        zs1 <- vd2[is1, 3]
        rs3 <- sqrt(vd2[is3, 1]^2 + vd2[is3, 2]^2) ## r = sqrt(x^2+y^2)  
        zs3 <- vd2[is3, 3]
        rs4 <- sqrt(vd2[is4, 1]^2 + vd2[is4, 2]^2) ## r = sqrt(x^2+y^2)  
        zs4 <- vd2[is4, 3]
        rs5 <- sqrt(vd2[is5, 1]^2 + vd2[is5, 2]^2) ## r = sqrt(x^2+y^2)  
        zs5 <- vd2[is5, 3]
        
        dr[i,j] <- mean(diff(c(mean(rs1),mean(rs3),mean(rs4),mean(rs5))))
        dz[i,j] <- mean(diff(c(mean(zs1),mean(zs3),mean(zs4),mean(zs5))))

  
        
    }
}
plot(w,(dr*dz)[ ,1])    
#> which.min(abs(dr*dz)[ ,1])
#[1] 91
#> w[91]
#[1] 0.29

