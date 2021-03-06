% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/ParseNetlogoData.R
\name{extractnumeric}
\alias{extractnumeric}
\title{Extract a set of numeric values from a single cell of a NetLogo output table}
\usage{
extractnumeric(charstring)
}
\arguments{
\item{charstring}{The full character string from one entry of a NetLogo data
table, including brackets and quotation marks.}
}
\value{
A vector containing all the numbers that were in the cell of the
  table.
}
\description{
In Pheno-Evo experiments, it is common to store all the values from all
agents for a particular variable at each given timepoint. In the resulting
Netlogo data table, those values all go into a single entry of the table at
each timepoint. [extractnumeric()] can be used to split up those
values and export them as a vector.
}
\details{
In general, the normal Pheno-Evo user should not have to use this function.
It is called by several other functions used for analyzing Pheno-Evo output
data, such as [summarize.endpoint()]. For a function that
calculates density and returns a dataframe, see [parsenumeric()].
For a function that returns the values as factors rather than numeric, see
[parsefactors.norm()].
}
\examples{
data(PE.ends)
PE.ends$degrade.rate[4]
extractnumeric(PE.ends$degrade.rate[4])
}
