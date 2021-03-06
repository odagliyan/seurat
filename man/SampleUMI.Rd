% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/preprocessing.R
\name{SampleUMI}
\alias{SampleUMI}
\title{Sample UMI}
\usage{
SampleUMI(data, max.umi = 1000, upsample = FALSE, progress.bar = TRUE)
}
\arguments{
\item{data}{Matrix with the raw count data}

\item{max.umi}{Number of UMIs to sample to}

\item{upsample}{Upsamples all cells with fewer than max.umi}

\item{progress.bar}{Display the progress bar}
}
\value{
Matrix with downsampled data
}
\description{
Downsample each cell to a specified number of UMIs. Includes
an option to upsample cells below specified UMI as well.
}
\examples{
raw_data = as.matrix(x = pbmc_small@raw.data)
downsampled = SampleUMI(data = raw_data)
head(x = downsampled)

}
