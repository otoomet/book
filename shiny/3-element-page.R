library(shiny)

ui <- fluidPage(
   titlePanel("My App"),
   textInput('username', label = "What is your name?"),
   textOutput('message')
)

server <- function(input, output) {
   output$message <- renderText("Greetings!")
}

shinyApp(ui, server)
