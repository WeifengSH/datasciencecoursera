# Due to the limits of ShinyApps.io, 
# some codes have to be treated as comments.

library(shiny)

shinyUI(pageWithSidebar(
  headerPanel("Detector for Species of Iris"),
  sidebarPanel(
    h4("Please input the parameters for the iris:"), 
    numericInput("Sepal.Length", "Length of Sepal (cm)", 0, min = 0, 
                 step = 0.1), 
    numericInput("Sepal.Width", "Width of Sepal (cm)", 0, min = 0, 
                 step = 0.1), 
    numericInput("Petal.Length", "Length of Petal (cm)", 0, min = 0, 
                 step = 0.1), 
    numericInput("Petal.Width", "Width of Petal (cm)", 0, min = 0, 
                 step = 0.1), 
    submitButton("Submit")
    ), 
  mainPanel(
    h3("Introduction of This Detector"), 
    p("This detector will categrize the iris into three species according
      to the parameters you input based on Edgar Anderson's Iris Data."), 
    h3("Instruction"), 
    p("You can input the measurements in centimeters of the iris flower. 
      Then submit them to check the species returned."), 
    h4("The iris belong to"), 
    verbatimTextOutput("prediction")
#     h4("Currently, the accuracy of the fit model is"), 
#     verbatimTextOutput("accuracy")
    )
  )
)