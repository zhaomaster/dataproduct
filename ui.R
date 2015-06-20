library(shiny)
shinyUI(
  pageWithSidebar(
    headerPanel("Child height prediction"),
    
    sidebarPanel(
      
      numericInput('father_height', 'Father Height in cm', 180),
      numericInput('mother_height', 'Mother Height in cm', 160),
      actionButton('Submit', "Predict")
    ),
    
    mainPanel(
      p("This application takes the heights of the parents and then make prediction of the height of their child. The inputs are father's height in centimeters and mother's height in centimeters. The output is the child's height in centimeters."),
      h3('Results of prediction'),
      h4("The predicted Child's Height in cm:"),
      verbatimTextOutput("prediction")
    )
  )
)

