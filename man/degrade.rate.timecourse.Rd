% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/PlotNetLogoData.R
\name{degrade.rate.timecourse}
\alias{degrade.rate.timecourse}
\title{Plot population distribution of degrade.rate over time}
\usage{
degrade.rate.timecourse(NLdata, runnum)
}
\arguments{
\item{NLdata}{The full dataframe containing data from all BehaviorSpace
experiments at all timepoints, imported from NetLogo.}

\item{runnum}{The run number of the experiment of interest.}
}
\value{
A ggplot object using geom_tile. This can be modified in the typical
  ggplot way by adding layers, scales, etc.
}
\description{
Generates a heatmap displaying how the distribution of phenotypic degrade rates in a population
changes over the course of a Pheno-Evo experiment. Time is displayed on the
x-axis, the range of possible degrade.rate values on the y-axis, and relative
abundance of a particular degrade.rate value given by color.
}
\details{

}
\examples{
data(PhenoEvoData_4)
degrade.rate.timecourse(PhenoEvoData_run4, 4)
}
