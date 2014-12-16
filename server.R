library(shiny)

shinyServer(function(input, output) {
                
                output$mass <- renderText({input$mass})
                output$height <- renderText({input$height})
                output$gender <- renderPrint({input$gender})
                output$calculation <- renderText({input$mass}/({input$height})^2) 
                output$healthRisk <- renderText({
                        if ({input$mass}/({input$height})^2 <= 18.5) "Underweight"
                        else if ({input$mass}/({input$height})^2 >= 25) "Overweight"
                        else "Healthy weight"
                })
})
