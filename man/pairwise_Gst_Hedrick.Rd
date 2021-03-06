\name{pairwise_Gst_Hedrick}
\alias{pairwise_Gst_Hedrick}
\title{Calculates pairwise values of Hedrick's G'st}
\usage{
  pairwise_Gst_Hedrick(x, linearized = FALSE)
}
\arguments{
  \item{x}{genind object (from package adegenet)}

  \item{linearized}{logical, if TRUE will turned linearized
  G'st (1/()1-G'st))}
}
\value{
  A distance matrix with between-population values of G''st
}
\description{
  This function calculates Hedrick's G'st, a measure of
  genetic differentiation, between all combinations of
  populaitons in a genind object.
}
\examples{
data(nancycats)
pairwise_Gst_Hedrick(nancycats[1:26,])
}
\references{
  Hedrick, PW. (2005), A Standardized Genetic
  Differentiation Measure. Evolution 59: 1633-1638.
}
\seealso{
  Other Hedrick: \code{\link{Gst_Hedrick}}

  Other pairwise: \code{\link{pairwise_D}},
  \code{\link{pairwise_Gst_Nei}}
}

