#' @title
#' Create and execute a new Monty Hall Problem game.
#'
#' @description
#' 'play_game()' generates and executes a new game that consists of two doors with goats behind them, and one with a car.
#'
#' @details
#' This function will generate and execute a new game that tests 
#' both strategies - staying with the originally selected door and switching
#' doors after a goat door has been revealed. The results of both strategies will be returned at the conclusion of the game.
#'
#' @param
#' No arguments are used by the function.
#'
#' @return
#' The function will return a table based on the strategy outcome of stay and switch.
#' Each strategy outcome will return a length 1 character vector indicating either WIN' or 'LOSE'.
#'
#' @examples
#' play_game()
#'
#' @export
play_game <- function( )
{
  new.game <- create_game()
  first.pick <- select_door()
  opened.door <- open_goat_door( new.game, first.pick )
  
  final.pick.stay <- change_door( stay=T, opened.door, first.pick )
  final.pick.switch <- change_door( stay=F, opened.door, first.pick )
  
  outcome.stay <- determine_winner( final.pick.stay, new.game  )
  outcome.switch <- determine_winner( final.pick.switch, new.game )
  
  strategy <- c( "stay","switch" )
  outcome <- c( outcome.stay,outcome.switch )
  game.results <- data.frame( strategy, outcome,
                              stringsAsFactors=F )
  return( game.results )
}

