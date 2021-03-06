# Generated by using Rcpp::compileAttributes() -> do not edit by hand
# Generator token: 10BE3573-1514-4C36-9D1C-5A225CD40393

#'  C++ Sampling Function for MCMC
#'
#' C++ Sampling Function used in the PieceExpIntensity function.
#' @param Y   Vector containing observed event times.
#' @param Rates Vector containing poisson count intensities.
#' @param B Number of iterations to run the MCMC with half burned in.
#' @param Poi Prior mean number of split points,
#' @return A list of all posterior quantities.
#' @examples
#' B=1000
#' n=100
#' Y=rexp(n,1)
#' Rates=Y
#' Rates[Y<.5]=rpois(sum(Y<.5),20)
#' Rates[Y>.5]=rpois(sum(Y>.5),3)
#' Poi=10
#' PieceExpIntensity2(Y,Rates,B,Poi)
#' @export
PieceExpIntensity2 <- function(Y, Rates, B, Poi) {
    .Call('PieceExpIntensity_PieceExpIntensity2', PACKAGE = 'PieceExpIntensity', Y, Rates, B, Poi)
}

