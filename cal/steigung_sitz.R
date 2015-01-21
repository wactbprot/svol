par(mfrow=c(2,1))
xlab <-  "r = (x^2 + y^2)^1/2 in mm"
ylab <- "z in mm"

d.sitz <- read.table("data/ventil-sitz_1.txt"
                   , skip=2
                   , sep=" "
                   , row.names=NULL)

d.teller <- read.table("data/ventil-kreis_2.txt"
                     , skip=2
                     , sep=" "
                     , row.names=NULL)
## radiusbereich in dem die steiging des
## ventilsitzes ermittelt wird
brs <- 8.25
bre <- 8.75
## bei welchem Abstand von der ventilsitzgeraden
## hört der Sitz auf und fängt der Schaft an 
def.border <- -0.1

sn.sitz   <- c("SCN1","SCN4","SCN5")
sn.teller <- c("SCN1","SCN3","SCN4","SCN5")

v0.mat    <- matrix(ncol=length(sn.teller), nrow=length(sn.sitz))
v1.mat    <- matrix(ncol=length(sn.teller), nrow=length(sn.sitz))
v2.mat    <- matrix(ncol=length(sn.teller), nrow=length(sn.sitz))
v3.mat    <- matrix(ncol=length(sn.teller), nrow=length(sn.sitz))
scn.mat   <- matrix(ncol=length(sn.teller), nrow=length(sn.sitz))

for(l.sitz in 1:length(sn.sitz)){
    for(l.teller in 1:length(sn.teller)){

        scn.mat[l.sitz,l.teller] <- paste("sitz scan:"
                                        , sn.sitz[l.sitz]
                                        , "teller scan:"
                                        , sn.teller[l.teller] )
        
        i.sitz.1 <- which(d.sitz[,1] == sn.sitz[l.sitz])
        m.sitz   <- as.matrix(d.sitz[i.sitz.1, 3:5])
        r.sitz   <- sqrt(m.sitz[,1]^2 + m.sitz[,2]^2)
        z.sitz   <- -m.sitz[,3]
        
        i        <- which(r.sitz > brs & r.sitz < bre)
        lm.sitz  <- lm(z.sitz[i] ~ r.sitz[i])
        
        sdm      <- sd(residuals(lm.sitz))
        m.sitz   <- coefficients(lm.sitz)[2]
        c.sitz   <- coefficients(lm.sitz)[1]

        ## gerade wird benutzt, um endpunkt
        ## des Sitzes zu finden:
        ## der wird definiert wo Abstand zur Sitzgeraden > def.border wird

        j <- which(r.sitz < brs & (m.sitz*r.sitz + c.sitz - z.sitz) < def.border)
        sitz.end.pkt <- j[length(j)]

        ## v0
        ## volumen von z.sitz[sitz.end.pkt]
        ## bis z.sitz[length(z.sitz)]
        v0.range      <- sitz.end.pkt:1
        v0.zylinder.h <- diff(z.sitz[v0.range])
        v0.zylinder.r <- r.sitz[v0.range[-1]]
        
        v0 <- pi* v0.zylinder.r^2 * v0.zylinder.h
        V0 <- sum(v0)
        
        v0.mat[l.sitz,l.teller] <- V0

        i.teller.1 <- which(d.teller[,1] == sn.teller[l.teller])
        m.teller <- as.matrix(d.teller[i.teller.1,3:5])

        r.teller <- sqrt(m.teller[, 1]^2 + m.teller[, 2]^2)
        z.teller <- m.teller[, 3]

        m.teller <- diff(z.teller)/diff(r.teller)
        k <- which(m.teller < m.sitz)
        ## dichtpunkt teller
        dp.teller <- k[length(k)]

        ## mit dichtpunkt kann achsenabschnitt c
        ## der Ventilsitzgeraden berechnet werden
        c.teller <- -( m.sitz * r.teller[dp.teller] - z.teller[dp.teller])

        z.teller.sitz.endpunkt <- m.sitz * r.sitz[sitz.end.pkt] + c.teller


        ## V1
        ## von
        dp.teller
        ## bis
        sitz.end.pkt
        ## achtung:sitz.end.pkt im sitz indexsystem
        ## erst nuch auf teller indexsystem umrechnenen:
        teller.end.pkt <- which(r.teller < r.sitz[sitz.end.pkt])[1]


        v1.range <- dp.teller:teller.end.pkt
        ## radien der Hohlzylinder
        v1.radien.teller <- r.teller[v1.range]

        v1.zylinder.h <-(m.sitz*v1.radien.teller + c.teller) - z.teller[v1.range]
        v1.zylinder.r <- r.teller[v1.range]

        N <- length(v1.zylinder.h)
        i1 <- seq(2,N)
        i2 <- seq(1,N-1)
        v1 <- pi *(v1.zylinder.r[i2]^2 - v1.zylinder.r[i1]^2)*(v1.zylinder.h[i1] + v1.zylinder.h[i1])/2

        V1 <- sum(v1)

        v1.mat[l.sitz,l.teller] <- V1

        ## V2
        ## von
        teller.end.pkt
        ## bis
        length(z.teller)
        v2.range <- teller.end.pkt:length(z.teller)
        v2.zylinder.h <- z.teller.sitz.endpunkt - z.teller[v2.range]
        v2.zylinder.r <- r.teller[v2.range]

        N <- length(v2.zylinder.h)
        i1 <- seq(2,N)
        i2 <- seq(1,N-1)

        v2 <- pi *(v2.zylinder.r[i2]^2 - v2.zylinder.r[i1]^2)*(v2.zylinder.h[i1] + v2.zylinder.h[i1])/2

        V2 <- sum(v2)

        v2.mat[l.sitz,l.teller] <- V2

        ## v3
        ## einfacher Zylinder
        V3 <- pi*r.teller[length(z.teller)]^2*v2.zylinder.h[N]

        v3.mat[l.sitz,l.teller] <- V3

        plot(r.sitz,z.sitz
           , xlim=c(7.9,9)
           , xlab = xlab
           , ylab = ylab
           , main="Ventilsitz"  
           , sub=paste("scan:", sn.sitz[l.sitz]))
        points(r.sitz[i], z.sitz[i], col=2)

        grid(col=1)
        abline(lm.sitz, col=3)

        abline(v=r.sitz[sitz.end.pkt], col=4)
        abline(h=z.sitz[sitz.end.pkt], col=4)
        text(r.sitz[sitz.end.pkt], z.sitz[sitz.end.pkt], "A", pos=2, cex=2)


        plot(r.teller, z.teller
           , ylim=c(8.5,11.5)
           , xlab = xlab
           , ylab = ylab
           , main="Ventilteller"
           , sub=paste("scan:", sn.teller[l.teller])
             )
        grid(col=1)
        abline(h=z.teller[dp.teller], col=2)
        abline(v=r.teller[dp.teller], col=2)
        text(r.teller[dp.teller], z.teller[dp.teller], "B", pos=2, cex=2)

        abline(a=c.teller, b = m.sitz, col=3, lwd=3)
        abline(v=r.sitz[sitz.end.pkt], col=8, lwd=3)

        abline(h= z.teller.sitz.endpunkt, col=4)
        abline(v=r.teller[teller.end.pkt], col=8, lwd=3)
        text(r.teller[teller.end.pkt], z.teller.sitz.endpunkt, "A", pos=2, cex=2)

    }
}