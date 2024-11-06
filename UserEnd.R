library(shiny)

# Define UI for species prediction application
ui <- fluidPage(
        titlePanel("Iris Species Prediction"),
        
        sidebarLayout(
                sidebarPanel(
                        numericInput("petal_length", 
                                     "Enter Petal Length:", 
                                     value = 1, 
                                     min = 0, 
                                     max = 7, 
                                     step = 0.1),
                        
                        numericInput("petal_width", 
                                     "Enter Petal Width:", 
                                     value = 0.1, 
                                     min = 0, 
                                     max = 3, 
                                     step = 0.1),
                        
                        actionButton("predict", "Predict Species")
                ),
                
                mainPanel(
                        plotOutput("speciesPlot"),
                        textOutput("prediction")
                )
        )
)
