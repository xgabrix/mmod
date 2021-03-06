#' Calculates pairwise values of Hedrick's G'st
#'
#' This function calculates Hedrick's G'st, a measure of genetic
#' differentiation, between all combinations of populaitons
#' in a genind object.
#'
#' @return A distance matrix with between-population values of G''st
#' @param x genind object (from package adegenet)
#' @param linearized logical, if TRUE will turned linearized G'st (1/()1-G'st))
#' @export
#' @examples
#' 
#' data(nancycats)
#' pairwise_Gst_Hedrick(nancycats[1:26,])
#' @references
#'  Hedrick, PW. (2005), A Standardized Genetic Differentiation Measure. Evolution 59: 1633-1638. 
#' @family pairwise
#' @family Hedrick

pairwise_Gst_Hedrick<- function(x, linearized=FALSE) {
  pops <- seppop(x)
  n.pops <- length(pops)
  #all combinations 
  allP <- utils::combn(1:n.pops, 2)
  # calculate the statistic
  pair <- function(index.a,index.b){
    a <- pops[[index.a]]
    b <- pops[[index.b]]
    temp <- repool(a,b)
    return(Gst_Hedrick(temp)$global)
    }
  res <- sapply(1:dim(allP)[2], function(i) pair(allP[,i][1], allP[,i][2]))
  attributes(res) <- list(class="dist", Diag=FALSE, Upper=FALSE, 
                          Labels=x@pop.names,Size=n.pops)
if(linearized){
   return(res/(1-res))
  }
  return(res)
}
