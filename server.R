library(shiny)

data = read.csv('~/worldcup/wcmatches.csv')

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
