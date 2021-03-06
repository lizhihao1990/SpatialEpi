% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/bayes_cluster.R
\name{GammaPriorCh}
\alias{GammaPriorCh}
\title{Compute Parameters to Calibrate a Gamma Distribution}
\usage{
GammaPriorCh(theta, prob, d)
}
\arguments{
\item{theta}{upper quantile}

\item{prob}{upper quantile}

\item{d}{mode}
}
\value{
A list containing
\item{a}{shape parameter}
\item{b}{rate parameter}
}
\description{
Compute parameters to calibrate the prior distribution of a relative risk 
that has a gamma distribution.
}
\examples{
param <- GammaPriorCh(5, 0.975, 1)
curve(dgamma(x,shape=param$a,rate=param$b),from=0,to=6,n=1000,ylab="density")
}
\author{
Jon Wakefield
}
\seealso{
\code{\link{LogNormalPriorCh}}
}

