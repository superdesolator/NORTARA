% Generated by roxygen2 (4.0.2): do not edit by hand
\name{valid_input_cormat}
\alias{valid_input_cormat}
\title{Computes the lower and upper correlation bounds for the input marginals.}
\usage{
valid_input_cormat(invcdfnames, paramslists)
}
\arguments{
\item{invcdfnames}{A character sequence of the marginals' inverse cdf names.}

\item{paramslists}{A list contains lists of params of the marginals as the
 same order as invcdfnames, the names of the arguments of the inner lists
 should keep the same with the function arguments matching rules with the
 arguments of invcdfnames functions.}
}
\value{
A list of two matrices. The \code{min_valid_cormat} contains the lower
 bounds and the \code{max_valid_cormat} contains the upper bounds of the
 feasible correlations.
}
\description{
The function computes the lower and upper correlation bounds for the input
marginals described by its two arguments.
}
\details{
The function computes the lower and upper correlation bounds for the input
marginals. And returns a list of lower and upper correlation matrices for the
target correlations based on the marginals, the matrices' dimensions are
decided by the length of \code{invcdfnames}.
}
\note{
Because of the random samples, the results of the function may be a little      #'different each time.
}
\examples{
\dontrun{
invcdfnames <- c("qt","qpois","qnorm")
paramslists <- list(
               m1 = list(df = 3),
               m2 = list(lambda = 5),
               m3 = list(mean = 0, sd = 1)
                 )
valid_input_cormat(invcdfnames, paramslists)
}
}
\references{
Demirtas, H., Hedeker, D. (2011). A practical way for computing
 approximate lower and upper correlation bounds. The American Statistician,
 \bold{65(2):104-109}.
}
\seealso{
\code{\link{BoundingRA}}, \code{\link{check_input_cormat}},
 \code{\link{gennortaRA}}
}

