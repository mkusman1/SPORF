% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/StrCorr.R
\name{StrCorr}
\alias{StrCorr}
\title{Compute tree strength and correlation}
\usage{
StrCorr(Yhats, Y)
}
\arguments{
\item{Yhats}{predicted class labels for each tree in a forest.}

\item{Y}{true class labels.}
}
\value{
scor
}
\description{
Computes estimates of tree strength and correlation according to the definitions in Breiman's 2001 Random Forests paper.
}
\examples{
library(rerf)
trainIdx <- c(1:40, 51:90, 101:140)
X <- as.matrix(iris[, 1:4])
Y <- iris[[5]]
forest <- RerF(X[trainIdx, ], Y[trainIdx], num.cores = 1L)
predictions <- Predict(X[-trainIdx, ], forest, num.cores = 1L, aggregate.output = FALSE)
scor <- StrCorr(predictions, Y[-trainIdx])
}
