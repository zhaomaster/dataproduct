childheight <- function(h1, h2) (h1+h2)/2

shinyServer(
  function(input, output) {
    output$father_height <- renderPrint({
      input$Submit
      isolate(input$father_height)
    })
    output$mother_height <- renderPrint({
      input$Submit
      isolate(input$mother_height)
    })
    output$prediction <- renderPrint({
      input$Submit
      isolate(childheight(input$father_height, input$mother_height))
    })
  }
)