
args <- commandArgs(trailingOnly = T)
args
fname <- args[1]
p_k <- as.numeric(args[2])

td = read.table(paste0(fname, ".csv"), sep=";", head=TRUE)

pdf(paste0(fname, "-1P.pdf"), family="NimbusSan", encoding="KOI8-R.enc")

myf <- function(x) {
 k <- abs(x[1])
 tm <- as.array(td$t)
 mExp <- as.array(td$C)
# A0 <- max(mExp)
 A0 <- 0.05
 C0 <- 0.0
 Q <- 0.0
 n <- length(tm)
 for (i in 1:n) {
    t <- tm[i]
    A <- A0*exp(-k*t)
    C  <- C0 + (A0-A)
    dQ <- C-mExp[i]
    Q <- Q + dQ*dQ;
  }
 Q <- Q*1.0e1/n
 return(Q)
}

test_myf <- function(x, caption) {
 Q <- myf(x)
 k <- abs(x[1])
 tm <- as.array(td$t)
 mExp <- as.array(td$C)
# A0 <- max(mExp)
 A0 <- 0.05
 C0 <- 0.0

 n <- length(tm)*100
 tmax <- max(tm)
 dt <- tmax / n

 mt  <- vector("numeric", n)
 mv <- vector("numeric", n)
 mA  <- vector("numeric", n)
 mC  <- vector("numeric", n)

 t <- 0.0
 for (i in 1:n) {
    A <- A0*exp(-k*t)
    C  <- C0 + (A0-A)
    v <- k*A
    mt[i] <- t
    mv[i] <- v
    mA[i] <- A
    mC[i] <- C
    t <- t + dt
  }

 print( sprintf("Quality: %d %e %f", n, Q, -log10(Q) ) )
 cap <- sprintf("First order reaction [k=%.2e] (Q: %.2e pQ:%.2f)", k, Q, -log10(Q))
# yrange <- range(mP, td$Heat_flow)
 yrange <- range(mExp, mC)
 plot(tm/3600, mExp, type="p", xlab = "t, h", ylab = "C", col="black", main=cap, lwd=2, ylim = yrange, cex.lab = 0.9, cex.axis = 0.9, cex.main = 0.9, cex.sub = 0.9, pch=0.5)
 lines(mt/3600, mC, type="l", col="orange", lwd=2)
# lines(mt/3600, mA, col="green", lwd=2)
 main = "C"
 location = "topleft"
 labels = c("Experimental", "Model")
 colors = c("black", "orange")
 legend(location, labels, fill=colors)

 return(Q)
}

krnd <- function(x) { runif(1, x-0.05*abs(x), x+0.05*abs(x)) }

print(td);
par0 <- c(p_k)
print(par0);
test_myf(par0, "Test")

Q <- myf(par0)
par <- par0
step <- 0
dQ <- 1.0
cat("Nelder-Mead Opt\n");
cat(sprintf("pQ0=%.3e\n\n", -log10(Q)));

#while((step<100) & (dQ>0.00001)) {
while(step<100) {
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
