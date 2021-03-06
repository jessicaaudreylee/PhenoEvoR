% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/EndpointSummaryStats.R
\name{degraderate.snapshot}
\alias{degraderate.snapshot}
\title{Replot values of degrade-rate in 2D space}
\usage{
degraderate.snapshot(ends.df, run.num)
}
\arguments{
\item{ends.df}{Dataframe of endpoint data, generated by extract.endpoint().
Must contain an xydr column.}

\item{run.num}{Run number to be plotted.}
}
\value{
A plot of the 2D model grid, with cells represented by squares in
  their original positions and color-coded by degrade.rate.
}
\description{
Generate a plot showing all the cells at their locations from one timepoint
of a Pheno-Evo experiment, color-coded by degrade rate, for viewing purposes.
This function is primarily to give the user a general idea of the
distribution of cells and degrade rate values at the timepoint of interest.
}
\details{
Generally, that timepoint will be the final timepoint of the experiment,
unless the user manually generates a dataframe with data from a different
timepoint. Note that the color scale is dramatically different from the one
used in the Pheno-Evo model. This function uses [sp::spplot()] from
the SP package.
}
\examples{
data(PE.ends)
degraderate.snapshot(PE.ends, run.num=4)
}
