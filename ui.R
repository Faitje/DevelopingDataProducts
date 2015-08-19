# install.packages("shiny")
# library(shiny)
# runApp("App")

shinyUI(pageWithSidebar(
        headerPanel('mtcars k-means clustering'),
        sidebarPanel(
                checkboxGroupInput('vars', 'Variables for clustering:',
                                   names(mtcars), selected = names(mtcars)),
                numericInput('clusters', 'Cluster count', 3,
                             min = 1, max = 9)
        ),
        mainPanel(
                tabsetPanel(
                        tabPanel("How to use this App", 
                                 h4("You can use this Shiny App to explore the mtcars dataset"), 
                                 p("Select the variables you want to see, and the number of clusters you want to use. On the Plot tab you will find the results."), 
                                 p("-mpg:       Miles/(US) gallon"),
                                 p("-cyl: 	Number of cylinders"),
                                 p("-disp: 	Displacement (cu.in.)"),
                                 p("-hp: 	Gross horsepower"),
                                 p("-drat: 	Rear axle ratio"),
                                 p("-wt: 	Weight (lb/1000)"),
                                 p("-qsec: 	1/4 mile time"),
                                 p("-vs: 	V/S"),
                                 p("-am: 	Transmission (0 = automatic, 1 = manual)"),
                                 p("-gear: 	Number of forward gears"),
                                 p("-carb: 	Number of carburetors") ),
                        tabPanel("Plot", plotOutput('plot1'))
                        
                )
                
        )
))


