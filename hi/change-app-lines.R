# Additional lines of code to alter the '01_hi' shiny app.
# But where do they go?

scol <- ifelse(is.null(input$colours), yes = "grey", no = input$colours)

      selectInput(inputId = "colours", label = "What colour?", choices = list("red", "green", "darkblue", "Will Fail!"), selected = "red")

hist(x, breaks = bins, col = scol, border = 'white')



