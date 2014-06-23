library(shiny)
shinyUI(pageWithSidebar(
    headerPanel("BMI Calculator"),
    sidebarPanel(
        radioButtons("dist", "Metric System",
                     c("kg/m" = "internat",
                       "lb/in" = "brit")),
        textInput(inputId="mass", label = "Mass (Weight)", value = 0),
        textInput(inputId="height", label = "Height", value = 0),
        textInput(inputId="patern", label = "Patern", value = 25),
        submitButton(text = "Calculate")
    ),
    mainPanel(

        # p('BMI Value'),
        # textOutput('text2'),
         h3('RESULTS'),
         p('BMI Value'),
         verbatimTextOutput("text1"),
         p('BMI Prime'),
         verbatimTextOutput("text2"),
         HTML('<p><img src="http://www.nature.com/clpt/journal/v90/n1/images/clpt2011104t1.gif"/></p>')
         
    )
))