library(shiny)
shinyServer(
    function(input, output) {
        
        calculate <- function(mass, height, metric) {
            bmi <- mass/(height^2)
            if(metric == "brit") bmi <- bmi*703
            bmi
            }
        
        output$text1 <- renderText({
            bmi <- calculate(as.numeric(input$mass), (as.numeric(input$height)), input$dist)
            if (is.na(bmi)) NULL
            else bmi
        })
        output$text2 <- renderText({
            bmi <- calculate(as.numeric(input$mass), (as.numeric(input$height)), input$dist)
            prime <- bmi/as.numeric(input$patern)
            if (is.na(prime)) NULL
            else {
                charprime <- as.character(prime*100)
                final <- paste(charprime,"%", sep ="")
                final
            }
        })
    }
)