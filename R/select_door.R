#' @title
#' Randomly select one of three doors.
#'
#' @description
#' 'select_door()' will randomly select one of three doors and return a number between one and three.
#'
#' @details
#' This setup replicates what a contestant would do during this stage of the game show - select door one, two, or three.
#'
#' @param
#' No arguments are used by the function.
#'
#' @return
#' This function returns a numeric value between 1 and 3, representative of the contestants door choice, 'a.pick'.
#'
#' @examples
#' select_door()
#'
#' @export
select_door <- function( )
{
  doors <- c( 1,2,3 )
  a.pick <- sample( doors, size=1 )
  return( a.pick )  # number between 1 and 3
}

