#
# This is the server logic of a Shiny web application. You can run the
# application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(shiny)

data = read.csv('/Users/felixdijkstal/Downloads/archive/wcmatches.csv')

# Define server logic required to draw a histogram
function(input, output, session) {
  
  output$error = renderText({
    
    plot_data = data %>%
      filter((home_team == input$country1 | away_team == input$country1) & (home_team == input$country2 | away_team == input$country2)) %>%
      tabyl(winning_team)
    
    if(nrow(plot_data) < 1){
      "These teams haven't played each other before"
    } else {
      "Pie chart showing the probability of each team winning"
    }
  }
  )

    output$chart <- renderPlotly({
      
      plot_data = data %>%
        filter((home_team == input$country1 | away_team == input$country1) & (home_team == input$country2 | away_team == input$country2)) %>%
        tabyl(winning_team)
      
      plot_ly(plot_data, labels = ~winning_team, values = ~percent, type = 'pie')

    })
    
}
