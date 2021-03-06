% Generated by roxygen2 (4.0.2): do not edit by hand
\name{geom_leg}
\alias{geom_leg}
\title{Single line segments with rounded ends}
\usage{
geom_leg(mapping = NULL, data = NULL, stat = "identity",
  position = "identity", arrow = NULL, ...)
}
\arguments{
\item{mapping}{mapping}

\item{data}{data}

\item{stat}{stat}

\item{position}{position}

\item{arrow}{arrow}

\item{...}{...}
}
\description{
Single line segments with rounded ends
}
\details{
only intended for use in ggmaps package.  only designed for mercator projection.
}
\examples{
\dontrun{

(legs_df <- route(
"marrs mclean science, baylor university",
  "220 south 3rd street, waco, tx 76701", # ninfa's
  alternatives = TRUE))

options('device')$device(width = 11.65, height = 4.17)
qmap('424 clay avenue, waco, tx', zoom = 16, maprange = TRUE, maptype = 'satellite',
  base_layer = ggplot(aes(x = startLon, y = startLat), data = legs_df)) +
  geom_segment(
    aes(x = startLon, y = startLat, xend = endLon, yend = endLat, colour = route),
    alpha = 3/4, size = 3, data = legs_df
  ) +
  scale_x_continuous(breaks = pretty(c(-97.1325,-97.119),4), lim = c(-97.1325,-97.119)) +
  facet_wrap(~ route) + theme_bw() +
  labs(x = 'Longitude', y = 'Latitude', colour = 'Routes')

qmap('424 clay avenue, waco, tx', zoom = 16, maprange = TRUE, maptype = 'satellite',
  base_layer = ggplot(aes(x = startLon, y = startLat), data = legs_df)) +
  geom_leg(
    aes(x = startLon, y = startLat, xend = endLon, yend = endLat, colour = route),
    alpha = 3/4, size = 2, data = legs_df
  ) +
  scale_x_continuous(breaks = pretty(c(-97.1325,-97.119),4), lim = c(-97.1325,-97.119)) +
  facet_wrap(~ route) + theme_bw() +
  labs(x = 'Longitude', y = 'Latitude', colour = 'Routes')


}
}
\seealso{
geom_segment in ggplot2, inspired by \url{http://spatialanalysis.co.uk/2012/02/great-maps-ggplot2/}, \code{\link{route}}
}

