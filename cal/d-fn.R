dx <- function(p,g){

    dm      <- matrix(ncol=3,nrow=3)
    alpha    <- 2*pi/360*g
    dm[1,1] <- 1
    dm[1,2] <- 0
    dm[1,3] <- 0
    dm[2,1] <- 0
    dm[3,1] <- 0
    dm[2,2] <- cos(alpha)
    dm[3,3] <- cos(alpha)
    dm[2,3] <- -sin(alpha)
    dm[3,2] <- sin(alpha)
    
    return(p %*% dm)
}

dy <- function(p,g){

    dm      <- matrix(ncol=3,nrow=3)
    alpha    <- 2*pi/360*g
    dm[1,1] <- cos(alpha)
    dm[1,2] <- 0
    dm[1,3] <- sin(alpha)
    dm[2,1] <- 0
    dm[3,1] <- -sin(alpha)
    dm[2,2] <- 1
    dm[3,3] <- cos(alpha)
    dm[2,3] <- 0
    dm[3,2] <- 0
    
    return(p %*% dm)
}
