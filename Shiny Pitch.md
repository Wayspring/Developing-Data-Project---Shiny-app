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


Slide with Code
=========================================================







Slide With Plot
========================================================




```
Error in parse(text = x, srcfile = src) : <text>:1:27: unexpected '}'
1: opts_chunk$set(cache=TRUE)}
                              ^
```
