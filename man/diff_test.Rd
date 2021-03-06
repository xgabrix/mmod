\name{diff_test}
\alias{diff_test}
\title{An exact test of population differentiation for genind objects}
\usage{
  diff_test(x, sim = TRUE, nreps = 2000)
}
\arguments{
  \item{x}{a genind object (from package adegenet)}

  \item{sim}{boolean: if TRUE simulate p-value by using an
  MCMC sample of those tables that have the same marginal
  totals as the observed data (required for all but the
  smallest datasets)}

  \item{nreps}{number of steps used to simulate p-value
  (default 2000)}
}
\value{
  named vector of p-values testing the null hypothesis
  these samples where drawn from a panmictic population.
}
\description{
  This function uses Fisher's exact test to determine if
  alleles in sub-populations are drawn randomly from a
  larger population (i.e. a significance test for allelic
  differentiation among sub-populations).
}
\details{
  Note, this test returns p-values for each locus in a
  dataset _not_ estimates of effect size. Since most
  populations have some degree of population
  differentiation, very large samples are almost guaranteed
  to return significant results. Refer to estimates of the
  various differentiation statistics (D, G''ST and
  Phi'ST)to ascertain how meaningful such results might be.
}
\examples{
data(nancycats)
diff_test(seploc(nancycats)[[2]], nreps=100)
}
\seealso{
  \code{\link{fisher.test}} from base R, which this
  function wraps
}

