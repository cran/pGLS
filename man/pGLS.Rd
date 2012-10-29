\name{pGLS}
\alias{pGLS}
\title{An Generalized Least Square model for comparative Phylogenetics}
\description{
\code{pGLS} An Generalized Least Square model for Comparative Phylogenetics
}
\usage{
pGLS(formula,data,covarmatrix,na.action, intercept = TRUE)
}

\arguments{
  \item{formula}{a formula describing the model to be fit. 
          Note, that an intercept is included at default.}
  \item{data}{the data frame including the predictors (X's) and the response (Y)}

  \item{covarmatrix}{the var-covariance matrix that is derived from phylogeny or other sources }
  \item{na.action}{a dummy term for data cleaning.}
  \item{intercept}{TRUE (default) if the specified model is with a intercept. It is rare to fit a such model without intercepts. }
 

}

\value{
  A list object of class \code{"z"} containing the results of GLS fitting.
  The components are:
\item{pred}{fitted values and standard errors of the fitted values.}
\item{coefficients}{estimated coefficients.}
\item{cov.coeff}{estimated covariance matrix of the coefficients}
\item{"sigma^2"}{estimated variance}
\item{pred.cond.}{(for unknown species only)predicted y-values conditioning on the known species. Note if there are no unknown species present in the data, conditional prediction is not calculated.}
\item{R-Sq}{fraction of total variance explained by the GLS model }
}

\references{
     
Garland, T., Jr., and A. R. Ives. (2000) \cr 
Using the past to predict the present: Confidence intervals
        for regression equations in phylogenetic comparative methods. \emph{American Naturalist 155:346-364.} 

    
     
     
Martins, E. P., and T. F. Hansen. (1996) \cr
The statistical analysis
of interspecific data: a review and evaluation of
comparative methods. \emph{ Pages 22-75 in E. P. Martins, ed.
Phylogenies and the comparative method in animal behavior.
Oxford University Press, Oxford.}


     
     
Box, G. E. P., G. M. Jenkins, and G. C. Reinsel. (1994)\cr
 \emph{Pages 282-285 Time series analysis: forecasting and control. Prentice Hall,
Englewood Cliffs, N.J.}\cr

Anderson, T.W. (2003). \cr
 \emph{ An Introduction to Multivariate Statistical Analysis. Wiley-Interscience; 3rd edition}\cr
   
 }

\author{Xianyun Mao
\email{xianyunmao at gmai1.com} replace 1 by l.

}

\examples{
data(pGLS)
pGLS(logAGIL~logBM+logASCR,data_fs,var_fs,na.pass)

}
\keyword{models} \keyword{multivariate} \keyword{regression}
