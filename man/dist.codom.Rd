\name{dist.codom}
\alias{dist.codom}
\title{Calculate distance between individual for co-dominant locus}
\usage{
  dist.codom(x, matrix = TRUE, global = TRUE, na.rm = TRUE)
}
\arguments{
  \item{x}{genind object (from package adegenet)}

  \item{matrix}{Boolean return matrix (not dist object)}

  \item{global}{Boolean if TRUE, return a single global
  estimate based on all loci. If FALSE return a list of
  matrices for each locus. if FALSE}

  \item{na.rm}{Boolean if TRUE remove individuals with NAs}
}
\value{
  either a list of distance matrices, one for each locus or
  a single matrix containing the mean distance between
  individuals across all loci

  Dropped for each distance matrix and object of class
  "na.action" containing indices to those indivudals in the
  genind object which where omitted due to having NAs
}
\description{
  This function calculates the distance between individuals
  in a genind object based on their genotypes.
  Specifically, the simple metric of Kosman and Leonard
  (2005) in which distance is calculated as a propotion of
  shared alleles at each locus.
}
\examples{
data(nancycats)
dist.codom(nancycats[,1])
}
\references{
  Kosman E., Leonard, K.J. Similarity coefficients for
  molecular markers in studies of genetic relationships
  between individuals for haploid diploid, and polyploid
  species. Molecular Ecology. 14: 415-424
}
