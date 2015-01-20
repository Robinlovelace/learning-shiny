library(shiny)

# Define UI for application that draws a histogram
shinyUI(fluidPage(

  # Application title
  titlePanel("RentSplitR: The fair way to split rent in shared properties"),

  # Sidebar with a slider input for the number of bins
  sidebarLayout(
    sidebarPanel(

#       radioButtons(inputId = "num",
#         label = "How many people will you live with?",
#         choices = 1:6,
#         selected = 4,
#         inline = TRUE),

      textInput(inputId = "people", label = "What are your names? (separate each name with a comma and space):", value = 'Adam, Briony, Carlota'),

#       radioButtons(inputId = "numbed",
#         label = "How many bedrooms?",
#         choices = 1:6,
#         selected = 4,
#         inline = TRUE),

      textInput(inputId = "rating", label = "Rate each bedroom from 1:100, for each person (e.g. '50, 52, 48' means Briony has the best room, '50, 50, 50' means they're all the same):", value = "50, 50, 50"),

      sliderInput("rent",
        "How much is the rent?:",
        min = 0,
        max = 2000,
        value = 1000)
#       ,
#       sliderInput("num",
#         "How many people share the house?",
#         min = 1,
#         max = 10,
#         value = 5)

    ),


    # Show a plot of the generated distribution
    mainPanel(
      plotOutput("rentdiv")
    )
  )
))
