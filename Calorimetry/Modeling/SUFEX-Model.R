
args <- commandArgs(trailingOnly = T)
args
fname <- args[1]
p_C  <- as.numeric(args[2])
p_A <- as.numeric(args[3])
p_xc <- as.numeric(args[4])
p_k  <- as.numeric(args[5])
td = read.table(paste0(fname, ".dat"), sep=";", head=TRUE)

pdf(paste0(fname, ".pdf"), family="NimbusSan", encoding="KOI8-R.enc")

test_myf <- function(x, caption) {
 C <- x[1]
 A <- x[2]
 xc <- x[3]
 k <- x[4]
 tm <- as.array(td$Time)
 flow <- as.array(td$Heat_flow)
# print(x)

 Q <- 0.0
 n <- length(tm)
 mf <- vector("numeric", n)
 for (i in 1:n) {
    mf[i] <- C + A*(0.5 + 1.0/(1.0+exp(-(tm[i]-xc)*k)))
#    print( sprintf("%d %.1f %e %e\n", n, tm[i], flow[i], mf[i] ) )
    dQ <- flow[i]-mf[i]
    Q <- Q + dQ*dQ;
  }
 Q <- Q*1.0e3/n
 print( sprintf("Quality: %d %e", n, Q ) )
 cap <- sprintf("%s [%.3e %.3e %.3e %.3e] (Quality: %.3e)", caption, C, A, xc, k, Q )
 yrange <- range(td$Heat_flow, mf)
 plot(td$Time/3600, td$Heat_flow, type="l", xlab = "t, h", ylab = "Normalized heat flow", col="black", main=cap, lwd=3, ylim = yrange, cex.lab = 0.9, cex.axis = 0.9, cex.main = 0.9, cex.sub = 0.9, pch=0.5)

 lines(td$Time/3600, mf, col="red", lwd=2)
 main = "Heat flow"
 location = "topright"
 labels = c("Experimental", "Model")
 colors = c("black", "red")
 legend(location, labels, title = main, fill=colors)
 return(Q)
}


myf <- function(x) {
 C <- x[1]
 A <- x[2]
 xc <- x[3]
 k <- x[4]
 tm <- as.array(td$Time)
 flow <- as.array(td$Heat_flow)

 Q <- 0.0
 n <- length(tm)
 mf <- vector("numeric", n)
 for (i in 1:n) {
    mf[i] <- C + A*(0.5 + 1/(1+exp(-(tm[i]-xc)*k)))
    dQ <- flow[i]-mf[i]
    Q <- Q + dQ*dQ;
  }
 Q <- Q*1.0e3/n
 return(Q)
}

krnd <- function(x) { runif(1, x-0.05*abs(x), x+0.05*abs(x)) }

par0 <- c(p_C, p_A, p_xc, p_k)

test_myf(par0, "Test")

ControlPar <- list(trace=0, maxit=30000, reltol=1e-18, abstol=1e-18)
"Nelder-Mead Opt"; r1 <- optim(sapply(par0, krnd), myf, control=ControlPar )
"Result: "; r1$par
test_myf(r1$par, "Nelder-Mead Opt")

ControlPar <- list(trace=1, maxit=30000, eltol=1e-18, abstol=1e-18)
"BFGS OPT"; r2 <- optim(sapply(par0, krnd), myf, NULL, method = "BFGS", hessian = TRUE, control=ControlPar)
"Result: "; r2$par
test_myf(r2$par, "BFGS Opt")

ControlPar <- list(trace=1, maxit=50000)
"SANN Opt"; r3 <- optim(sapply(par0, krnd), myf,  method = "SANN", control=ControlPar )
"Result: "; r3$par
test_myf(r3$par, "SANN Opt")

dev.off()
