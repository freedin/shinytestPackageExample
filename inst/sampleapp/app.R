data(cars)

shinyApp(
  ui = fluidPage(
    sliderInput("n", "n", 1, nrow(cars), 10),
    plotOutput("plot")
  ),
  server = function(input, output) {
    output$plot <- renderPlot({
      a <- chr(9)
      plot(head(cars, input$n), xlim = range(cars[[1]]), ylim = range(cars[[2]]))
    })
  }
)
