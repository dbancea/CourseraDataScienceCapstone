library(shiny);
shinyUI(pageWithSidebar(
  headerPanel("Next words prediction"),
  sidebarPanel(
    textInput("text",label = h3("Type an incomplete sentence"), value = "thank"),
    sliderInput("predictions", "Predictions count:",
                min = 1, max = 8, value = 1, step = 1),
    submitButton('Submit'),
    br(),
    h5("Coursera Capstone Project"),
    h5("by Danut Bancea")
  ),
mainPanel(
  tabsetPanel (
    tabPanel('One word prediction',
             dataTableOutput("word1")),
    tabPanel('Two words prediction',
             dataTableOutput("word2"))
  )
)
))

 
