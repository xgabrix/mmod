# Calculate estimators for Hs and Ht
#
# This function calculates Nei and Chesser's estimators for Hs and Ht
# 
# Note, the individuals functions in the diff_stat family (listed below)
# return these estimates (becuase they use this function internally). This
# function is not exported (if someone has a use for it I can change this).

HsHt <- function(x){
    pops <- pop(x)
    n_by_pop <- by(x@tab, pops, sum, na.rm=TRUE)
    n <- sum(n_by_pop > 0)
    harmN <- harmonic_mean(n_by_pop[n_by_pop >0])
    a <- apply(x@tab,2,function(row) tapply(row, pops, mean, na.rm=TRUE))
    HpS <- sum(1 - apply(a^2, 1, sum, na.rm=TRUE)) / n
    Hs_est <- (2*harmN/(2*harmN-1))*HpS
    HpT <- 1 - sum(apply(a,2,mean, na.rm=TRUE)^2)
    Ht_est <- HpT + Hs_est/(2*harmN*n)
    return(c(Ht_est, Hs_est, n))
}
