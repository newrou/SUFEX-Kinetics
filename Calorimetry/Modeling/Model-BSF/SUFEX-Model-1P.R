
args <- commandArgs(trailingOnly = T)
args
fname <- args[1]
p_k1 <- as.numeric(args[2])
p_H1  <- as.numeric(args[3])

td = read.table(paste0(fname, ".dat"), sep=";", head=TRUE)

pdf(paste0(fname, "-1P.pdf"), family="NimbusSan", encoding="KOI8-R.enc")

myf <- function(x, caption) {
 k1 <- abs(x[1])
 H1 <- x[2]
 a <- 1

 tm <- as.array(td$Time)
 flow <- as.array(td$Heat_flow)

 n <- length(tm)
 tmax <- max(tm)
 dt <- tmax / n

 A <- 1.0
 B <- 1.0
 C <- 1.0

 mt  <- vector("numeric", n)
 mv1 <- vector("numeric", n)
 mA  <- vector("numeric", n)
 mB  <- vector("numeric", n)
 mC  <- vector("numeric", n)
 mP1 <- vector("numeric", n)
 mP <- vector("numeric", n)

 Q <- 0.0
 t <- 0.0
 for (i in 1:n) {

    v1 <- k1*A

    P1 <- v1*H1
    P <- P1

    mt[i]  <- t
    mv1[i] <- v1
    mA[i]  <- A
    mP1[i] <- P1
    mP[i]  <- P

    A <- A - v1*dt
#    if(A<0) {A<-0}
    C <- C + v1*dt

    t <- t + dt

    if(t>10*3600.0) {
	dQ <- mP[i]-td$Heat_flow[i]
	Q <- Q + dQ*dQ;
    }
  }
# print( mP )
 Q <- Q*1.0e6/n
 return(Q)
}

test_myf <- function(x, caption) {
 k1 <- abs(x[1])
 H1 <- x[2]
 a <- 1

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

 mt  <- vector("numeric", n)
 mv1 <- vector("numeric", n)
 mA  <- vector("numeric", n)
 mB  <- vector("numeric", n)
 mC  <- vector("numeric", n)
 mP1 <- vector("numeric", n)
 mP  <- vector("numeric", n)

 Q <- 0.0
 t <- 0.0
 for (i in 1:n) {

    v1 <- k1*A
#    v1 <- k1*(A^a)*(B^b)

    P1 <- v1*H1
    P  <- P1

    mt[i]  <- t
    mv1[i] <- v1
    mA[i]  <- A
    mB[i]  <- B
    mC[i]  <- C
    mP1[i] <- P1
    mP[i]  <- P

    A <- A - v1*dt
#    if(A<0) {A<-0}
#    B <- B - v1*dt + v2*dt
    C <- C + v1*dt

    t <- t + dt

#    mf[i] <- C + A*(0.5 + 1.0/(1.0+exp(-(tm[i]-xc)*k)))
#    print( sprintf("%d %.1f %e %e\n", n, tm[i], flow[i], mf[i] ) )
    if(t>10*3600.0) {
	dQ <- mP[i]-td$Heat_flow[i]
	Q <- Q + dQ*dQ;
    }
  }

 Q <- Q*1.0e6/n
 print( sprintf("Quality: %d %e %f", n, Q, -log10(Q) ) )
 cap <- sprintf("%s [%.2e %.2e] (Q: %.2e pQ:%.6f)", caption, k1, H1, Q, -log10(Q))
# yrange <- range(mP, td$Heat_flow)
 yrange <- range(td$Heat_flow)
 plot(td$Time/3600, td$Heat_flow, type="l", xlab = "t, h", ylab = "P, Watt", col="black", main=cap, lwd=2, ylim = yrange, cex.lab = 0.9, cex.axis = 0.9, cex.main = 0.9, cex.sub = 0.9, pch=0.5)
 lines(mt/3600, mP, col="orange", lwd=2)
 main = "Heat flow"
 location = "topright"
 labels = c("Experimental", "Model2")
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

krnd <- function(x) { runif(1, x-0.05*abs(x), x+0.05*abs(x)) }

par0 <- c(p_k1, p_H1)
print(par0);
test_myf(par0, "Test")

Q <- myf(par0)
par <- par0
step <- 0
dQ <- 1.0
cat("Nelder-Mead Opt\n");
cat(sprintf("pQ0=%.3e\n\n", -log10(Q)));

#while((step<100) & (dQ>0.00001)) {
while(step<10) {
  step <- step + 1
  ControlPar <- list(trace=0, maxit=500, reltol=1e-25, abstol=1e-25)
  r1 <- optim(sapply(par0, krnd), myf, control=ControlPar )
  Qn <- myf(r1$par)
  cat(sprintf("Step%d  Qn=%.3e  pQn=%.6f  pQmin=%.6f\n", step, Qn, -log10(Qn), -log10(Q)));
  if(Qn<Q) {
    dQ <- abs(Q-Qn)
#    print(r1$par)
    par <- r1$par
    Q <- Qn
    test_myf(r1$par, "Nelder-Mead Opt")
    cat(sprintf("  pQ=%.6f  Q=%.3e  dQ=%.6f  ", -log10(Q), Q, dQ));
    print(par)
  }
}

#print(par)
#test_myf(r1$par, "Nelder-Mead Opt")

dev.off()
