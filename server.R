library( ggplot2 )
library(readxl)
library(shiny)
Returned_migrants <- read_excel("~/Returned migrants.xlsx")
Returned_migrants <- data.frame(Returned_migrants)
shinyServer( function( input, output ) {   # Server logic for histogram
    output$distPlot <- renderPlot( {
        # Render a barplot 
        barplot(Returned_migrants[,input$Department],  
                main=input$Department, 
                ylab="Number of returned migrants in Honduras", 
                xlab="Year") 
    })
})
