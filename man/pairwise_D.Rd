\name{pairwise_D}
\alias{pairwise_D}
\title{Calculates pairwise values of Jost's D}
\usage{
  pairwise_D(x, linearized = FALSE)
}
\arguments{
  \item{x}{genind object (from package adegenet)}

  \item{linearized}{logical, if TRUE will turned linearized
  D (1/1-D)}
}
\value{
  A distance matrix with between-population values of D
}
\description{
  This function calculates Jost's D, a measure of genetic
  differentiation, between all combinations of populaitons
  in a genind object.
}
\examples{
data(nancycats)
pairwise_D(nancycats[1:26,])
}
\references{
  Jost, L. (2008), GST and its relatives do not measure
  differentiation. Molecular Ecology, 17: 4015-4026.
}
\seealso{
  Other D: \code{\link{D_Jost}}

  Other pairwise: \code{\link{pairwise_Gst_Hedrick}},
  \code{\link{pairwise_Gst_Nei}}
}

