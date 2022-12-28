library(shiny)
# Define UI for application that draws a histogram
fluidPage(

    # Application title
    titlePanel("Predicting world cup game results"),

    # Sidebar with a slider input for number of bins
    sidebarLayout(
        sidebarPanel(
            selectInput('country1', 'Choose a national team', 
                        choices = c('Algeria', 'Angola', 'Argentina', 'Australia', 'Austria', 'Belgium', 'Bolivia', 'Bosnia and Herzegovina',
                                    'Brazil', 'Bulgaria', 'Cameroon', 'Canada', 'Chile', 'China PR', 'Colombia', 'Costa Rica', 'Croatia', 'Czech Republic',
                                    'Czechoslovakia', 'Denmark', 'Dutch West Indies', 'East Germany', 'Ecuador', 'Egypt', 'El Salvador', 'England', 'FR Yugoslavia', 'France', 
                                    'Germany', 'Ghana', 'Greece', 'Haiti', 'Honduras', 'Hungary', 'Iceland', 'Iran', 'Iraq', 'Italy', 'Ivory Coast', 'Jamaica',
                                    'Japan', 'Kuwait', 'Mexico', 'Morocco', 'Netherlands', 'New Zealand', 'Nigeria', 'North Korea', 'Northern Ireland', 'Norway', 
                                    'Panama', 'Paraguay', 'Peru', 'Poland', 'Portugal', 'Republic of Ireland', 'Romania', 'Russia', 'Saudi Arabia', 'Scotland', 'Senegal', 
                                    'Serbia', 'Slovakia', 'Slovenia', 'South Africa', 'South Korea', 'Soviet Union', 'Spain', 'Sweden', 'Switzerland', 'Togo', 'Trinidad and Tobago',
                                    'United States', 'Uruguay', 'Wales', 'West Germany', 'Yugoslavia', 'Zaire')),
            selectInput('country2', 'Choose the opposing team', 
                        choices = c('Algeria', 'Angola', 'Argentina', 'Australia', 'Austria', 'Belgium', 'Bolivia', 'Bosnia and Herzegovina',
                                    'Brazil', 'Bulgaria', 'Cameroon', 'Canada', 'Chile', 'China PR', 'Colombia', 'Costa Rica', 'Croatia', 'Czech Republic',
                                    'Czechoslovakia', 'Denmark', 'Dutch West Indies', 'East Germany', 'Ecuador', 'Egypt', 'El Salvador', 'England', 'FR Yugoslavia', 'France', 
                                    'Germany', 'Ghana', 'Greece', 'Haiti', 'Honduras', 'Hungary', 'Iceland', 'Iran', 'Iraq', 'Italy', 'Ivory Coast', 'Jamaica',
                                    'Japan', 'Kuwait', 'Mexico', 'Morocco', 'Netherlands', 'New Zealand', 'Nigeria', 'North Korea', 'Northern Ireland', 'Norway', 
                                    'Panama', 'Paraguay', 'Peru', 'Poland', 'Portugal', 'Republic of Ireland', 'Romania', 'Russia', 'Saudi Arabia', 'Scotland', 'Senegal', 
                                    'Serbia', 'Slovakia', 'Slovenia', 'South Africa', 'South Korea', 'Soviet Union', 'Spain', 'Sweden', 'Switzerland', 'Togo', 'Trinidad and Tobago',
                                    'United States', 'Uruguay', 'Wales', 'West Germany', 'Yugoslavia', 'Zaire')),
        ),

        # Show a plot of the generated distribution
        mainPanel(
            plotlyOutput('chart'),
            textOutput('error')
        )
    )
)
