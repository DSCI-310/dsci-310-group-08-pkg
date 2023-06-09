% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/corr_plot.R
\name{correlation_plot}
\alias{correlation_plot}
\title{Correlation Plot Function}
\usage{
correlation_plot(data, title)
}
\arguments{
\item{data}{The dataframe that contains the dataset which needs to be plotted by ggpairs}

\item{title}{The title that the correlation plot should contain passed as a string to the function}
}
\value{
Returns the generated plot
}
\description{
This function gives a correlation plot by running ggpairs when a dataframe (data) is passed and a title for it
}
\examples{
data_test <- data.frame(
revenue = c(1,2,3),
budget = c(5,6,7)
)
correlation_plot = correlation_plot(data_test, "correlation")
correlation_plot
}
