# server side
library(shiny)

shinyServer(function(input, output){

  output$rentdiv <- renderPlot({
    p <- read.csv(textConnection(input$people), header = F, stringsAsFactors = F)
    p <- gsub(" ", "", p)
    n <- length(p)
    r <- read.csv(textConnection(input$rating), header = F)
    r <- as.numeric(gsub(" ", "", r))
    prop <- r / sum(r)
    rentt <- input$rent * prop
    # draw
    barplot(height = rentt, names.arg = paste0(p, ":\n£", round(rentt, 2)), border = "white", col = "lightblue")
  })
})
