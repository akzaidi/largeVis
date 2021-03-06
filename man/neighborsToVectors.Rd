% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/distance.R
\name{neighborsToVectors}
\alias{neighborsToVectors}
\title{A utility function to convert a k-NN graph to a pair of 0-indexed vectors of indices.}
\usage{
neighborsToVectors(x)
}
\arguments{
\item{x}{A `[K,N]` matrix of indices of the nearest neighbors of each vertex. 0-indexed.}
}
\value{
A list with fields:
\describe{
\item{i}{The slowly-varying indices of x}
\item{j}{The quickly-varying indices of x}
}
}
\description{
In the returned list, the nodes indexed by `j` are the identified nearest neighbors of the nodes indexed by `i`.
In other words, if `i = c(0,0,0,1,1,1)` and `j = c(1,2,3,2,3,4)`, then nodes `1, 2 & 3` are nearest neighbors of node 0,
but node 0 is not a nearest neighbor of node 1.
}

