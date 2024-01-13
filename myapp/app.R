library(shiny)
library(shinyRatings)

ui <- fluidPage(
  shinyRatings('star1', no_of_stars = 7, default = 5), 
  textOutput('text1'), 
  shinyRatings('star2',default = 3, disabled = TRUE), 
  textOutput('text2'), 
)

server <- function(input, output, session) {
  output$text1 <- renderText({paste("No. of stars : ", input$star1)})
  output$text2 <- renderText({paste("No. of stars : ", input$star2)})
}

shinyApp(ui, server)