library(shiny); 
library(data.table);

source("predict_word.R");

shinyServer(
  function(input, output) {
    output$word1 <- renderDataTable(
        data.table("Predicted word" = word1(tolower(as.character(input$text)), input$predictions)),
        options = list(searching = FALSE, paging=FALSE, info=FALSE)
    )
    output$word2 <- renderDataTable(
        data.table("Predicted words" = word2(tolower(as.character(input$text)), input$predictions)),
        options = list(searching = FALSE, paging = FALSE, info=FALSE)
    )
  }
)

