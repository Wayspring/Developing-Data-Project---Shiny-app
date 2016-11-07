# For this project we make a reactive histogram using the iris dataset that comes with R.
# We will use the render plot() function to render the plot and the plotOutput()
# function in the shiny UI to display the plot. We will also use the input 
# widgets learned so far: selectInput(), sliderInput() and radioButtons().

library(shiny) 
# Define UI for application that draws the Distribution histogram
shinyUI(fluidPage(                                                                                                                                                                                                                                                                                                                                                                                                              shinyUI(fluidPage(
  # Application header
  titlePanel(title = h4("Iris Dataset Render Plot() ", align="center")),
  sidebarLayout(
    # Sidebar panel
    sidebarPanel(
      selectInput("var","1. Select the variable from the iris dataset",
                  choices = c("Sepal.Length" = 1, "Sepal.Width" = 2, "Petal.Length" = 3, "Petal.Width" = 4),selected = 1),
      br(),
      sliderInput("bins", "2. Select the number of BINs for histogram", min=5, max=25, value=15),
      br(),
      radioButtons("color", "3. Select the color of histogram",
                   choices = c("Sky blue", "Red", "Green"), selected = "Sky blue")
    ),
    # Main Panel    
    mainPanel(
      plotOutput("myhist")
    )
  )
)
)
)
)