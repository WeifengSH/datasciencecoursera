# Due to the limits of ShinyApps.io, 
# some codes have to be treated as comments.

library(shiny)

# library(caret)
# data(iris)
# in.train <- createDataPartition(y = iris$Species, p = 0.7, list = FALSE)
# training <- iris[in.train, ]
# testing <- iris[-in.train, ]
# mod.fit <- train(Species ~., method = "rpart", data = training)
# pred <- predict(mod.fit, testing)
# accuracy <- confusionMatrix(pred, testing$Species)

result <- function(input){
  check <- input$Sepal.Length + input$Sepal.Width + input$Petal.Length + 
    input$Petal.Width
  if(check == 0){
    return("You haven't input the parameters.")
  }else{
    if(input$Petal.Length < 2.5){
      return("setosa")
    }else{
      if(input$Petal.Length < 4.8){
        return("versicolor")
      }else{
        return("virginica")
      }
    }
  }
#   input <- data.frame(Sepal.Length = input$Sepal.Length, 
#                       Sepal.Width = input$Sepal.Width, 
#                       Petal.Length = input$Petal.Length, 
#                       Petal.Width = input$Petal.Width)
#   input.pred <- as.character(predict(mod.fit, input))
#   return(input.pred)
}

shinyServer(
  function(input, output){
#     output.accuracy <- as.numeric(accuracy$overall[1])
    output$prediction <- renderPrint({result(input)})
#     output$accuracy <- renderPrint(output.accuracy)
  }
)