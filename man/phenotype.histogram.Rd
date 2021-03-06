% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/PlotNetLogoData.R
\name{phenotype.histogram}
\alias{phenotype.histogram}
\title{Plot all distributions of phenotypic degrade rates at the final timepoint}
\usage{
phenotype.histogram(ends.df, xvar, yvar, nums = FALSE)
}
\arguments{
\item{ends.df}{Dataframe of endpoint data, generated by extract.endpoint().}

\item{xvar}{Experimental parameter for plotting on the major x-axis, across
panels. Must be a column name of ends.df, with no quotation marks.}

\item{yvar}{Experimental parameter for plotting on the major y-axis, across
panels. Must be a column name of ends.df, with no quotation marks.}

\item{nums}{Should panels be labeled by run number? T/F}
}
\value{
A ggplot object using geom_line and facet_grid. This can be modified
  in the typical ggplot way by adding layers, scales, etc.
}
\description{
For a dataset composed of multiple Pheno-Evo experiments in a parameter
sweep, [phenotype.histogram()] produces a multi-panel plot in
which each panel is a histogram showing the full distribution of degrade.rate
values in the population for one experiment at the final timepoint, and the
panels are arranged according to the two parameters of interest. Within each
panel, the x-axis axis is the degrade rate phenotype and the y-axis is the %
of population at that degrade rate.
}
\details{
As with any of the endpoint functions, you can use this function on
timepoints other than the final timepoint, as long as the input dataframe has
only one row per run number.
}
\examples{
data(PE.ends)
phenotype.histogram(PE.ends, xvar=env.noise, yvar=toxin.conc, nums=TRUE)
}
