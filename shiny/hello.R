
library(shiny)

## The ui is the result of calling the `fluidPage()` layout function
ui <- fluidPage(
   ## A widget: a text input box (save input in the `username` key)
   textInput("username", label = "What is your name?"),
   ## An output element: a text output (for the `message` key)
   textOutput("message")
)

## The server is a function that takes `input` and `output` args
server <- function(input, output) {
   ## assign a value to the `message` key in `output`
   ## argument is a reactive expression for showing text
   output$message <- renderText({
      ## use the `username` key from input and and return new value
      ## for the `message` key in output
      paste("Hello", input$username)
   })
}

shinyApp(ui, server)
