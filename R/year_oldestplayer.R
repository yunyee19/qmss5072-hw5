#' Oldest player in that year
#'
#' This function retrieves the player with the oldest age, in that particular NBA year. Imports: dplyr
#' @param year Year of interest
#' @return Output is a one-row tibble displaying the name of the oldest player and their age (in that year).
#' @examples year_oldestplayer(2011)
#' @importFrom magrittr %>%
#' @importFrom dplyr filter
#' @importFrom dplyr select
#' @importFrom dplyr arrange
#' @export

year_oldestplayer <- function(x){
  oldest_player <- nba %>% filter(Year == x) %>% select(Player, Age) %>% arrange(desc(Age)) %>% head(1)

  return(oldest_player)
}
