#' @title
#' Opens one of the doors with a goat behind it.
#'
#' @description
#' 'open_goat_door()' will open one of the two goat doors.
#'
#' @details
#' During this stage of the game show, the host will open one of the doors with a goat behind it.
#' This function will randomly open one of the two goat doors if the 'select_door()' function
#' retuned the door with the car. If the 'select_door()' function returned a door with a
#' goat, 'open_goat_door()' will return the other avalible goat door.
#'
#' @param
#' 'a.game' and 'a.pick' are needed for the function to process. 'a.game' is a length 3 charactor vector
#' indicating the positions of the goats and cars. 'a.pick' is a numberic value between 1 and 3,
#' representing the contestants selected door.
#'
#' @return
#' The function returns a numeric value between 1 and 3, representing the avalible door with a goat behind it, 'opened.door'.
#'
#' @examples
#' open_goat_door( a.game, a.pick )
#'
#' @export
open_goat_door <- function( a.game, a.pick )
{
  doors <- c( 1,2,3 )
  # if contestant selected car,
  # randomly select one of two goats
  if( a.game[ a.pick ] == "car" )
  {
    goat.doors <- doors[ a.game != "car" ]
    opened.door <- sample( goat.doors, size=1 )
  }
  if( a.game[ a.pick ] == "goat" )
  {
    opened.door <- doors[ a.game != "car" & doors != a.pick ]
  }
  return( opened.door ) # number between 1 and 3
}
