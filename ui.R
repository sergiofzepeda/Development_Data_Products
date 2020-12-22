#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
# 
#    http://shiny.rstudio.com/
#

library(shiny)
library(readxl)
# Load Data
Returned_migrants <- read_excel("~/Returned migrants.xlsx")
# Use a fluid Bootstrap layout 
shinyUI(fluidPage(     
    
    # Give the page a title 
    titlePanel("Returned Honduran migrants by Department"), 
    
    # Generate a row with a sidebar 
    sidebarLayout(        
        
        
        # Define the sidebar with one input 
        sidebarPanel(p(strong("Documentation:",style="color:blue"), a("User Help Page",href="https://rpubs.com/sergiofzepeda/706980")), 
                     selectInput("Department", "Department:",  
                                 choices=colnames(Returned_migrants[-1])), 
                     hr(), 
                     helpText("Honduran Migrants") 
        ), 
        
        # Create a spot for the barplot 
        mainPanel( 
            plotOutput("distPlot")   
        ) 
        
    ) 
) )