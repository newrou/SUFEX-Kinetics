
args <- commandArgs(trailingOnly = T)
args
fname <- args[1]
p_k1 <- as.numeric(args[2])
p_k2 <- as.numeric(args[3])
p_k3 <- as.numeric(args[4])
p_H1  <- as.numeric(args[5])
p_H3  <- as.numeric(args[6])

#p_a  <- as.numeric(args[7])
#p_b  <- as.numeric(args[8])
#p_c1  <- as.numeric(args[9])
#p_c2  <- as.numeric(args[10])
#p_d  <- as.numeric(args[11])

p_a  <- 3.546014e-01
p_b  <- 2.221220e-01
p_c1  <- 2.110576e+00
p_c2  <- 2.612282e+00
p_d  <- 1.075698e+00

#  pQ=6.101073  Q=7.924e-07  dQ=0.000000   [1]  1.355271e-05  2.053981e-06  2.479639e-04  2.110143e+00 -2.287736e+00
# [6]  3.546014e-01  2.221220e-01  2.110576e+00  2.612282e+00  1.075698e+00


td = read.table(paste0(fname, ".dat"), sep=";", head=TRUE)

pdf(paste0(fname, "-model3.pdf"), family="NimbusSan", encoding="KOI8-R.enc")

myf <- function(x, caption) {
 k1 <- abs(x[1])
 k2 <- abs(x[2])
 k3 <- abs(x[3])
 H1 <- x[4]
 H2 <- -H1
 H3 <- x[5]
 a <- x[6]
 b <- x[7]
 c1 <- x[8]
 c2 <- x[9]
 d <- x[10]

 tm <- as.array(td$Time)
 flow <- as.array(td$Heat_flow)

 n <- length(tm)
 tmax <- max(tm)
 dt <- tmax / n

 A <- 1.0
 B <- 1.0
 C <- 0.0
 D <- 1.0
 E <- 0.0

 mt  <- vector("numeric", n)
 mv1 <- vector("numeric", n)
 mv2 <- vector("numeric", n)
 mv3 <- vector("numeric", n)
 mA  <- vector("numeric", n)
 mB  <- vector("numeric", n)
 mC  <- vector("numeric", n)
 mD  <- vector("numeric", n)
 mE  <- vector("numeric", n)
 mP1 <- vector("numeric", n)
 mP2 <- vector("numeric", n)
 mP3 <- vector("numeric", n)
 mP  <- vector("numeric", n)

 Q <- 0.0
 t <- 0.0
 for (i in 1:n) {

    v1 <- k1*(A^a)*(B^b)
    v2 <- k2*(C^c1)
    v3 <- k3*(C^c2)*(D^d)

    P1 <- v1*H1
    P2 <- v2*H2
    P3 <- v3*H3
    P  <- P1+P2+P3

    mt[i]  <- t
    mv1[i] <- v1
    mv2[i] <- v2
    mv3[i] <- v3
    mA[i]  <- A
    mB[i]  <- B
    mC[i]  <- C
    mD[i]  <- D
    mE[i]  <- E
    mP1[i] <- P1
    mP2[i] <- P2
    mP3[i] <- P3
    mP[i]  <- P

    A <- A - v1*dt + v2*dt
    B <- B - v1*dt + v2*dt
    C <- C + v1*dt - v2*dt - v3*dt
    D <- D - v3*dt
    E <- E + v3*dt

    t <- t + dt

    dQ <- mP[i]-td$Heat_flow[i]
    Q <- Q + dQ*dQ;
  }

 Q <- Q*1.0e6/n
 return(Q)
}

test_myf <- function(x, caption) {
 k1 <- abs(x[1])
 k2 <- abs(x[2])
 k3 <- abs(x[3])
 H1 <- x[4]
 H2 <- -H1
 H3 <- x[5]
 a <- x[6]
 b <- x[7]
 c1 <- x[8]
 c2 <- x[9]
 d <- x[10]

 tm <- as.array(td$Time)
 flow <- as.array(td$Heat_flow)
# print(x)

# n <- 10000
# dt <- 0.5
 n <- length(tm)
 tmax <- max(tm)
 dt <- tmax / n

 A <- 1.0
 B <- 1.0
 C <- 0.0
 D <- 1.0
 E <- 0.0

 mt  <- vector("numeric", n)
 mv1 <- vector("numeric", n)
 mv2 <- vector("numeric", n)
 mv3 <- vector("numeric", n)
 mA  <- vector("numeric", n)
 mB  <- vector("numeric", n)
 mC  <- vector("numeric", n)
 mD  <- vector("numeric", n)
 mE  <- vector("numeric", n)
 mP1 <- vector("numeric", n)
 mP2 <- vector("numeric", n)
 mP3 <- vector("numeric", n)
 mP  <- vector("numeric", n)

 Q <- 0.0
 t <- 0.0
 for (i in 1:n) {

    v1 <- k1*(A^a)*(B^b)
    v2 <- k2*(C^c1)
    v3 <- k3*(C^c2)*(D^d)

    P1 <- v1*H1
    P2 <- v2*H2
    P3 <- v3*H3
    P  <- P1+P2+P3

    mt[i]  <- t
    mv1[i] <- v1
    mv2[i] <- v2
    mv3[i] <- v3
    mA[i]  <- A
    mB[i]  <- B
    mC[i]  <- C
    mD[i]  <- D
    mE[i]  <- E
    mP1[i] <- P1
    mP2[i] <- P2
    mP3[i] <- P3
    mP[i]  <- P

    A <- A - v1*dt + v2*dt
    B <- B - v1*dt + v2*dt
    C <- C + v1*dt - v2*dt - v3*dt
    D <- D - v3*dt
    E <- E + v3*dt

    t <- t + dt

#    mf[i] <- C + A*(0.5 + 1.0/(1.0+exp(-(tm[i]-xc)*k)))
#    print( sprintf("%d %.1f %e %e\n", n, tm[i], flow[i], mf[i] ) )
    dQ <- mP[i]-td$Heat_flow[i]
    Q <- Q + dQ*dQ;
  }

 Q <- Q*1.0e6/n
 x <- 0.016
 print( sprintf("Quality: %d %e %f", n, Q, -log10(Q) ) )
 cap <- sprintf("k1=%.2e k2=%.2e k3=%.2e H1=%.1f H3=%.1f \n a=%.3f b=%.3f c1=%.3f c2=%.3f d=%.3f  Q: %.2e", k1/x, k2/x, k3/x, H1/x, H3/x, a, b, c1, c2, d, Q)
 yrange <- range(mP, td$Heat_flow)
 plot(td$Time/3600, td$Heat_flow, type="l", xlab = "t, h", ylab = "P, Watt", col="black", main=cap, lwd=2, ylim = yrange, cex.lab = 0.9, cex.axis = 0.9, cex.main = 0.9, cex.sub = 0.9, pch=0.5)
 lines(mt/3600, mP, col="orange", lwd=2)
 main = "Heat flow"
 location = "topright"
 labels = c("Experimental", "Model3")
 colors = c("black", "orange")
 legend(location, labels, title = main, fill=colors)

# yrange <- range(0.0, 1.0)
# plot(mt, mA, type="l", xlab = "t, s", ylab = "C, mol/l", col="black", main="SUFEX Concentration", lwd=2, ylim = yrange, cex.lab = 0.9, cex.axis = 0.9, cex.main = 0.9, cex.sub = 0.9, pch=0.5)
# lines(mt, mB, col="gray", lwd=2)
# lines(mt, mC, col="green", lwd=2)
# lines(mt, mD, col="blue", lwd=2)
# lines(mt, mE, col="red", lwd=3)
# main = "Concentration"
# location = "topright"
# labels = c("A", "B", "C", "D", "E")
# colors = c("black", "gray", "green", "blue", "red")
# legend(location, labels, title = main, fill=colors)

# yrange <- range(mv1, mv2, mv3)
# plot(mt, mv3, type="l", xlab = "t, s", ylab = "v, mol*l/s", col="red", main="SUFEX Heat flow", lwd=3, ylim = yrange, cex.lab = 0.9, cex.axis = 0.9, cex.main = 0.9, cex.sub = 0.9, pch=0.5)
# lines(mt, mv1, col="green", lwd=2)
# lines(mt, mv2, col="blue", lwd=2)
# main = "v"
# location = "topright"
# labels = c("v3", "v1", "v2")
# colors = c("red", "green", "blue")
# legend(location, labels, title = main, fill=colors)

# yrange <- range(mP, mP1, mP2, mP3)
# plot(mt, mP, type="l", xlab = "t, s", ylab = "P, Watt", col="red", main="SUFEX Heat flow", lwd=3, ylim = yrange, cex.lab = 0.9, cex.axis = 0.9, cex.main = 0.9, cex.sub = 0.9, pch=0.5)
# lines(mt, mP1, col="green", lwd=2)
# lines(mt, mP2, col="blue", lwd=2)
# lines(mt, mP3, col="orange", lwd=2)
# main = "Heat flow"
# location = "topright"
# labels = c("P", "P1", "P2", "P3")
# colors = c("red", "green", "blue", "orange")
# legend(location, labels, title = main, fill=colors)

 return(Q)
}

krnd <- function(x) { runif(1, x-0.005*abs(x), x+0.005*abs(x)) }

par0 <- c(p_k1, p_k2, p_k3, p_H1, p_H3, p_a, p_b, p_c1, p_c2, p_d)
#print(par0);
test_myf(par0, "")

dev.off()
