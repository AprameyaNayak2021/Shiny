# Shiny Prediction Appliction
*oooh shiny*

This repository contains a Shiny web application that predicts the species of iris flowers based on their petal and sepal dimensions. The application utilizes the Iris dataset available in R and applies a nearest neighbors algorithm to predict the species based on user inputs.

## Project Structure

This repository contains the following files:

- **ServerEnd.R**: Contains the server-side logic for the Shiny app. It processes the user input, applies the nearest neighbors algorithm, and renders the output (predicted species and plot).
- **UserEnd.R**: Defines the user interface of the Shiny app. It includes input fields for petal length and width, a button to trigger the prediction, and a display for the predicted species and plot.
- gitignore File
- Shiny.Rproj
- Readme.md

## How the Shiny App Works

### 1. User Input
The user is prompted to input two key values:
- Petal Length (in cm)
- Petal Width (in cm)

These values are used to calculate the Euclidean distance from the input point to all data points in the Iris dataset.

### 2. Prediction Logic
Once the user inputs the values and clicks "Predict," the app:
- Calculates the Euclidean distance between the input values and each record in the Iris dataset.
- Identifies the nearest neighbor from the dataset.
- Outputs the predicted species based on the closest match.

#### Thank You!
Thank you for taking the time to read this

<u>__*Keep smiling, Keep dancing!*__</u>
