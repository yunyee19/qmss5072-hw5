#' Correlation Matrix
#'
#' This function calculates the correlation matrix of numeric variables, in that particular NBA year. Imports: dplyr
#' @param year Year of interest
#' @return Output is a correlation matrix
#' @examples year_numeric(2011)
#' @importFrom magrittr %>%
#' @importFrom dplyr filter
#' @importFrom purrr keep
#' @export

year_numeric <- function(x){
  year_cor <- nba %>% filter(Year == x) %>% keep(is.numeric) %>% cor()

  return(year_cor)
}
