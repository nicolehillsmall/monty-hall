#' @title
#' The contestant now has the oppurtunity to switch their pick to the
#' other avalible door.
#'
#' @description
#' 'change_door()' will allow the contestant to switch their initial
#' pick to the other avalible door, after one goat door has been opened.
#'
#' @details
#' At this point in the game, one of the goat doors has been opened and
#' the contestant is given the oppurtunity to switch their pick to the only
#' other avalible door. Switching is not requried.
#'
#' @param
#' 'stay=T' or 'stay=F', 'opened.door', and 'a.pick' are needed
#' for this function to process. 'stay=T' will result in the contestant
#' keeping their original pick from 'select_door()'. 'stay=F' will result
#' in the contestant switching to the only avalible door. 'opened.door' is
#' a numeric value between 1 and 3 and represents the goat door the host opened.
#' 'a.pick' is the contestants origional pick from 'select_door()', a numeric value.
#'
#' @return
#' The function returns a numeric value between 1 and 3, 'final.pick'.
#'
#' @examples
#' change_door( stay=T, opened.door, a.pick )
#' change_door( stay=F, opened.door, a.pick )
#'
#' @export
change_door <- function( stay=T, opened.door, a.pick )
{
  doors <- c( 1,2,3 )
  
  if( stay )
  {
    final.pick <- a.pick
  }
  if( ! stay )
  {
    final.pick <- doors[ doors != opened.door & doors != a.pick ]
  }
  
  return( final.pick )  # number between 1 and 3
}

