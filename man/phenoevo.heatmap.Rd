% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/PlotNetLogoData.R
\name{phenoevo.heatmap}
\alias{phenoevo.heatmap}
\title{Heatmap showing population average of custom variable in many Pheno-Evo
populations}
\usage{
phenoevo.heatmap(ends.df, xvar, yvar, gradientvar)
}
\arguments{
\item{ends.df}{Dataframe of endpoint data, generated by extract.endpoint().}

\item{xvar}{Experimental parameter for plotting on x-axis. Must be a column
name of ends.df, with no quotation marks.}

\item{yvar}{Experimental parameter for plotting on y-axis. Must be a column
name of ends.df, with no quotation marks.}

\item{gradientvar}{Variable to be expressed as color gradient in heat map
fill. Must be the name of a column in ends.df containing population-mean
data.}
}
\value{
A ggplot object using geom_tile. This can be modified in the typical
  ggplot way by adding layers, scales, etc.
}
\description{
This plot shows three dimensions of data: two experimental parameters (for
instance, toxin concentration and diffusion rate) as axes, and the population
average of any trait of choice as color gradient from white to black. It is a
snapshot of several experiments from a parameter sweep, at a single
timepoint.
}
\details{
To calculate the population mean for your trait of choice, use
[summarize.endpoint()] As with other endpoint-summary plots, this
function can be used with data from any timepoint, as long as the ends.df
dataframe contains data from only one timepoint per run number. For functions
designed for specific variables with pre-designated color schemes, see also
[degrade.rate.heatmap()], [switch.rate.heatmap()],
[response.error.heatmap()], [generation.heatmap()],
and [survival.heatmap()].
}
\examples{
data(PE.ends)
phenoevo.heatmap(PE.ends, toxin.conc, env.noise, mean.response.error)
}
