#' @title Launch Application
#'
#' @param app Character, name of the application.
#' @param use_browser Logical, if TRUE the system's default web browser will be launched automatically after the app is started.
#' @param host Character, the IPv4 address that the application should listen on.
#' @param port Numeric, the TCP port that the application should listen on.
#' @param quiet Logical, if TRUE Shiny status messages will be shown. Defaults to FALSE.
#'
#' @importFrom shiny runApp
#'
#' @examples
#' \dontrun{launch_app(app = "explorer", user_browser = TRUE)}
#'
#' @export
launch_app <- function(app = "explorer", use_browser = TRUE, host = '0.0.0.0',
                       port = 3838, quiet = FALSE) {
  stopifnot("`use_browser should be logical`" = is.logical(use_browser))
  stopifnot("`app` must be a character" = is.character(app))
  stopifnot("`host` must be a character" = is.character(host))
  stopifnot("`port` must be a numeric" = is.numeric(port))
  stopifnot("`quiet` should be logical`" = is.logical(quiet))
  # Locate escaexplorer app within the package ---------------------------------
  dir <- system.file(app, package = PACKAGE_NAME)
  # Run the app ----------------------------------------------------------------
  runApp(appDir = dir, launch.browser = use_browser, host = host, port = port,
         quiet = quiet)
}

