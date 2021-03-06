% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/PieceExpIntensity.R
\name{PieceExpIntensity}
\alias{PieceExpIntensity}
\title{Runs the PieceExpIntensity sampler and returns posterior results.}
\usage{
PieceExpIntensity(X, Y, B, Poi)
}
\arguments{
\item{X}{Vector containing observed event times.}

\item{Y}{Vector containing poisson count intensities.}

\item{B}{Number of iterations to run the MCMC with half burned in.}

\item{Poi}{Prior mean number of split points.}
}
\value{
A list of all posterior quantities and a summary of the most commonly visited model.
}
\description{
Returns a list of posterior samples along with summaries for the most visited number of split points.
}
\examples{
B=1000
n=100
X=rexp(n,1)
Y=X
Y[X<.5]=rpois(sum(X<.5),20)
Y[X>.5]=rpois(sum(X>.5),3)
Poi=10
PieceExpIntensity(X,Y,B,Poi)
}
\references{
Chapple (2017). Modeling ISIL terror attacks and their intensities via flexible Bayesian piecewise models. Currently Under Review.
}
