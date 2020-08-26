
args <- commandArgs(trailingOnly = T)
args
fname <- args[1]
p_C  <- as.numeric(args[2])
p_A <- as.numeric(args[3])
p_xc <- as.numeric(args[4])
p_k  <- as.numeric(args[5])
td = read.table(paste0(fname, ".dat"), sep=";", head=TRUE)

pdf(paste0(fname, "-test.pdf"), family="NimbusSan", encoding="KOI8-R.enc")

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
 Q <- Q*1.0e6/n
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

par0 <- c(p_C, p_A, p_xc, p_k)

test_myf(par0, "Test")

dev.off()
