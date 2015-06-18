data(Titanic)

shinyServer( 
  function(input, output) {
    output$Plot <- renderPlot({
      X <- as.symbol(input$X)
      Y <- as.symbol(input$Y)
      eval(substitute(mosaicplot(~ X + Y, data = Titanic, main = "", color = 4:5)))
    })
  } 
)