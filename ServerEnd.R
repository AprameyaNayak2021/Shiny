library(shiny)
library(ggplot2)

# Load the iris dataset
data(iris)

# Define server logic
server <- function(input, output) {
        
        # Create a reactive expression to predict species
        observeEvent(input$predict, {
                # Get input values
                petal_length <- input$petal_length
                petal_width <- input$petal_width
                
                # Predict species based on input parameters
                prediction <- iris[which.min((iris$Petal.Length - petal_length)^2 + 
                                                     (iris$Petal.Width - petal_width)^2), "Species"]
                
                # Determine the color based on the predicted species
                species_color <- switch(as.character(prediction),
                                        "setosa" = "#F8766D",   # Red color used by ggplot for "setosa"
                                        "versicolor" = "#00BA38",  # Green color used by ggplot for "versicolor"
                                        "virginica" = "#619CFF")  # Blue color used by ggplot for "virginica"
                
                output$prediction <- renderText({
                        paste("Predicted Species:", prediction)
                })
                
                # Generate plot with the predicted point in the same color as the species
                output$speciesPlot <- renderPlot({
                        ggplot(iris, aes(x = Petal.Length, y = Petal.Width, color = Species)) +
                                geom_point(size = 3) +
                                # Highlight the predicted point in the color of the predicted species
                                geom_point(aes(x = petal_length, y = petal_width), 
                                           color = species_color, size = 5, shape = 1) +
                                labs(title = "Iris Species Prediction",
                                     x = "Petal Length",
                                     y = "Petal Width") +
                                theme_minimal()
                })
        })
}
