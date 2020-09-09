
args <- commandArgs(trailingOnly = T)
args
fname <- args[1]
p_k1 <- as.numeric(args[2])
p_k2 <- as.numeric(args[3])
p_k3 <- as.numeric(args[4])
p_H1  <- as.numeric(args[5])
p_H3  <- as.numeric(args[5])
#td = read.table(paste0(fname, ".dat"), sep=";", head=TRUE)

pdf(paste0(fname, "-test.pdf"), family="NimbusSan", encoding="KOI8-R.enc")

test_myf <- function(x, caption) {
 k1 <- x[1]
 k2 <- x[2]
 k3 <- x[3]
 H1 <- x[4]
 H2 <- -H1
 H3 <- x[5]
# tm <- as.array(td$Time)
# flow <- as.array(td$Heat_flow)
# print(x)

 A <- 1.0
 B <- 1.0
 C <- 0.0
 D <- 1.0
 E <- 0.0

 n <- 10000
 dt <- 0.5

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

# Q <- 0.0
# n <- length(tm)
# mf <- vector("numeric", n)
 t <- 0.0
 for (i in 1:n) {

    v1 <- k1*A*B
    v2 <- k2*C
    v3 <- k3*C*D

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
#    dQ <- flow[i]-mf[i]
#    Q <- Q + dQ*dQ;
  }

yrange <- range(0.0, 1.0)
plot(mt, mA, type="l", xlab = "t, s", ylab = "C, mol/l", col="black", main="SUFEX Concentration", lwd=2, ylim = yrange, cex.lab = 0.9, cex.axis = 0.9, cex.main = 0.9, cex.sub = 0.9, pch=0.5)
lines(mt, mB, col="gray", lwd=2)
lines(mt, mC, col="green", lwd=2)
lines(mt, mD, col="blue", lwd=2)
lines(mt, mE, col="red", lwd=3)
main = "Concentration"
location = "topright"
labels = c("A", "B", "C", "D", "E")
colors = c("black", "gray", "green", "blue", "red")
legend(location, labels, title = main, fill=colors)

yrange <- range(mP, mP1, mP2, mP3)
plot(mt, mP, type="l", xlab = "t, s", ylab = "P, Watt", col="red", main="SUFEX Heat flow", lwd=3, ylim = yrange, cex.lab = 0.9, cex.axis = 0.9, cex.main = 0.9, cex.sub = 0.9, pch=0.5)
lines(mt, mP1, col="green", lwd=2)
lines(mt, mP2, col="blue", lwd=2)
lines(mt, mP3, col="orange", lwd=2)
main = "Heat flow"
location = "topright"
labels = c("P", "P1", "P2", "P3")
colors = c("red", "green", "blue", "orange")
legend(location, labels, title = main, fill=colors)

# Q <- Q*1.0e6/n
# print( sprintf("Quality: %d %e", n, Q ) )
# cap <- sprintf("%s [%.3e %.3e %.3e %.3e] (Quality: %.3e)", caption, C, A, xc, k, Q )
# yrange <- range(td$Heat_flow, mf)
# plot(td$Time/3600, td$Heat_flow, type="l", xlab = "t, h", ylab = "Normalized heat flow", col="black", main=cap, lwd=3, ylim = yrange, cex.lab = 0.9, cex.axis = 0.9, cex.main = 0.9, cex.sub = 0.9, pch=0.5)
# lines(td$Time/3600, mf, col="red", lwd=2)
# main = "Heat flow"
# location = "topright"
# labels = c("Experimental", "Model")
# colors = c("black", "red")
# legend(location, labels, title = main, fill=colors)
# return(Q)
}

par0 <- c(p_k1, p_k2, p_k3, p_H1, p_H3)

test_myf(par0, "Test")

dev.off()
