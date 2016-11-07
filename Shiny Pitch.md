Reproducible Pitch Presentation
========================================================
author:Wayne Springle 
date: November 5th 2016
autosize: true

Goal of this presentation
========================================================
For this project we make a reactive histogram using the iris dataset that  comes with R.
We will use the render plot() function to render the plot and the        plotOutput() function in the shiny UI to display the plot.
We will also use the input widgets learned so far: selectInput(),   sliderInput() and radioButtons(), especially the radio button to display the different colors.

The data set consists of 50 samples from each of three species of Iris (Iris setosa, Iris virginica and Iris versicolor). Four features were measured from each sample: the length and the width of the sepals and petals, in centimetres. 

The URL:-https://stryvers.shinyapps.io/My_Reproducible_Shiny_App/

Slide With Code
========================================================


```r
data(iris)
str(iris)
```

```
'data.frame':	150 obs. of  5 variables:
 $ Sepal.Length: num  5.1 4.9 4.7 4.6 5 5.4 4.6 5 4.4 4.9 ...
 $ Sepal.Width : num  3.5 3 3.2 3.1 3.6 3.9 3.4 3.4 2.9 3.1 ...
 $ Petal.Length: num  1.4 1.4 1.3 1.5 1.4 1.7 1.4 1.5 1.4 1.5 ...
 $ Petal.Width : num  0.2 0.2 0.2 0.2 0.2 0.4 0.3 0.2 0.2 0.1 ...
 $ Species     : Factor w/ 3 levels "setosa","versicolor",..: 1 1 1 1 1 1 1 1 1 1 ...
```


UI.R
=========================================================

```r
library(shiny) 
# Define UI for application that draws the Distribution histogram
shinyUI(fluidPage(                                                                                                                                                                                                                                                     
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
```

<!--html_preserve--><div class="container-fluid">
<h2>
<h4 align="center">Iris Dataset Render Plot() </h4>
</h2>
<div class="row">
<div class="col-sm-4">
<form class="well">
<div class="form-group shiny-input-container">
<label class="control-label" for="var">1. Select the variable from the iris dataset</label>
<div>
<select id="var"><option value="1" selected>Sepal.Length</option>
<option value="2">Sepal.Width</option>
<option value="3">Petal.Length</option>
<option value="4">Petal.Width</option></select>
<script type="application/json" data-for="var" data-nonempty="">{}</script>
</div>
</div>
<br/>
<div class="form-group shiny-input-container">
<label class="control-label" for="bins">2. Select the number of BINs for histogram</label>
<input class="js-range-slider" id="bins" data-min="5" data-max="25" data-from="15" data-step="1" data-grid="true" data-grid-num="10" data-grid-snap="false" data-prettify-separator="," data-keyboard="true" data-keyboard-step="5" data-drag-interval="true" data-data-type="number"/>
</div>
<br/>
<div id="color" class="form-group shiny-input-radiogroup shiny-input-container">
<label class="control-label" for="color">3. Select the color of histogram</label>
<div class="shiny-options-group">
<div class="radio">
<label>
<input type="radio" name="color" value="Sky blue" checked="checked"/>
<span>Sky blue</span>
</label>
</div>
<div class="radio">
<label>
<input type="radio" name="color" value="Red"/>
<span>Red</span>
</label>
</div>
<div class="radio">
<label>
<input type="radio" name="color" value="Green"/>
<span>Green</span>
</label>
</div>
</div>
</div>
</form>
</div>
<div class="col-sm-8">
<div id="myhist" class="shiny-plot-output" style="width: 100% ; height: 400px"></div>
</div>
</div>
</div><!--/html_preserve-->
SERVER.R
========================================================

 
 ```r
 library(shiny)
 shinyServer(
  function(input, output){
    output$myhist <- renderPlot({
      colm <- as.numeric(input$var)
      hist(iris[,colm], breaks=seq(0, max(iris[,colm]), l=input$bins+1),col=input$color, main="Histogram of Iris dataset", xlab=names(iris[colm])) 
    })
  }
 )
 ```
