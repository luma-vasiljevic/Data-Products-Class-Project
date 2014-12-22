library(shiny)

# Define UI for dataset viewer application
shinyUI(
  pageWithSidebar(
    # Application title
    headerPanel("Airport Locator"),
    
    sidebarPanel(
      h6("Ths app uses data from OpenFlight: http://openflights.org/data.html"),
      h6("Provided geo coordinates, and the number of desired airports to consider, 
         on the right hand side apears a list of airports sorted by distance from inputed coordinates."),
      numericInput('number','How many airports',10),
      h3('Please provide geographic coordinates'),
      numericInput('latitude','Latitude',34), numericInput('longitude','Longitude',-84),
      submitButton('Submit')
    ),
    
    mainPanel(
        h3('Airports Nearby'),
        h4('You provided'),
        
        verbatimTextOutput("inputLat"),
        verbatimTextOutput("inputLong"),
        h4('Which resulted in the following airports:'),
        
        tabsetPanel(tabPanel("Table","Airports sorted by distance from your coordinates:",
                 tableOutput("airports")))
        #verbatimTextOutput("prediction")
    )
  )
)
