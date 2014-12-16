library(shiny)
library(markdown)
shinyUI(navbarPage("Health Evaluator",
        tabPanel("Calculator",
                 sidebarLayout( 
                               sidebarPanel(
                                            numericInput("mass", "Mass (kg)", 60, min = 0, max = 10, step = 1),
                                            numericInput("height", "Height (m)", 1.65, min = 0, max = 10, step = 1),
                                            radioButtons("gender", "Gender:",
                                                       c("Female" = "Female",
                                                         "Male" = "Male",
                                                         "Not appliable" = "Not appliable")
                                                         ),
                                            submitButton('Submit')
                                            ),            
                                mainPanel(
                                        h3('Results of calculation'),
                                        h4('Mass you entered:'),
                                        textOutput("mass"),
                                        h4('Height you entered:'),
                                        textOutput("height"),
                                        h4('Gender you entered:'),
                                        textOutput("gender"),
                                        h4('BMI Calculated:'),
                                        verbatimTextOutput("calculation"),
                                        h4('Health Categories:'),
                                        verbatimTextOutput("healthRisk")
                                        )
                                )
                ),
        tabPanel("About", includeMarkdown("README.MD"))
))