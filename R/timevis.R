#' @import htmlwidgets
#' @export

timevis = function(items = list(),options = list(),width = NULL, height = NULL, elementId = NULL){

  # usage for Timeline :
  # var timeline = new vis.Timeline(container, items, options);

  # pass the data and options using 'x'
  x = list( items = items, options = options )

  htmlwidgets::createWidget(
    name = 'timevis',
    x,
    width = width,
    height = height,
    package = 'timevis',
    elementId = elementId
  )

}

#' @export
timevisOutput = function(outputId, width = '100%', height = '400px'){
  htmlwidgets::shinyWidgetOutput(outputId, 'timevis', width, height, package = 'timevis')
}

#' @export
renderTimevis = function(expr, env = parent.frame(), quoted = FALSE){
  if(!quoted){ expr = substitute(expr) } # force quoted
  htmlwidgets::shinyRenderWidget(expr, timevisOutput, env, quoted = TRUE)
}

