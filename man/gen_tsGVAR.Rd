% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/mod_gen.R
\name{gen_tsGVAR}
\alias{gen_tsGVAR}
\title{Generate time-series GVAR model for multiple (heterogeneous) individuals}
\usage{
gen_tsGVAR(n_node = 6, p_rewire_temp = 0.5, p_rewire_cont = 0.5, n_persons = 1)
}
\arguments{
\item{n_node}{an integer denoting the number of nodes}

\item{p_rewire_temp}{a numeric value between 0-1 denoting the extent of individual difference in the temporal network}

\item{p_rewire_cont}{a numeric value between 0-1 denoting the extent of individual difference in the contemporaneous network}

\item{n_persons}{an integer denoting the number of individuals to generate tsGVAR for}
}
\value{
A list of beta, PDC, kappa and contemporaneous networks
}
\description{
This function generates time-series GVAR model for multiple individuals that demonstrates difference or simularity.
Currently generating temporal and contemporaneous networks
}
\details{
\code{beta} can be transposed to obtain the temporal network;
\code{PDC} is the partial directed correlation matrix, which is a standardized version of temporal network;
\code{kappa} is the precision matrix denoting conditional (in)dependence,
which is a inverse of covariance matrix denoting the (dependence) among variables;
kappa can be further standardized to the contemporaneous networks (\code{omega_zeta_within})
}
\examples{
library(IVPP)

# Generate the network
net_ls <- gen_tsGVAR(n_node = 6,
                     p_rewire_temp = 0.5,
                     p_rewire_cont = 0,
                     n_persons = 2)
}
\author{
Xinkai Du
Maintainer: Xinkai Du \href{mailto:xinkai.du.xd@gmail.com}{xinkai.du.xd@gmail.com}
}
