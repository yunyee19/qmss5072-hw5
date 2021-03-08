#' Mean Games per Player
#'
#' This function calculates the mean number of games played per player, in that particular NBA year. Imports: dplyr
#' @param year Year of interest
#' @return Output is the Mean number of games played by each player in that year
#' @examples year_meangames(2011)
#' @importFrom magrittr %>%
#' @importFrom dplyr filter
#' @importFrom dplyr pull
#' @export

year_meangames <- function(x){
  mean_games <- nba %>% filter(Year == x) %>% pull(G) %>% mean()

  return(mean_games)
}
