
# Define UI for application that draws a histogram
navbarPage("App Title", 
           theme = shinythemes::shinytheme("yeti"),
           
           # Application title
          
           # Sidebar with a slider input for number of bins
           tabPanel("Main",
                    
                    column(width = 2,
                           
                           style=paste0('height: calc(100vh - 98px); padding:30px; border: 1px solid ',gray(0.9),'; background:',gray(0.95)),
                           strong("Inputs"),
                           hr(),
                           sliderInput("bins",
                                       "Number of bins:",
                                       min = 1,
                                       max = 50,
                                       value = 30)
                    ),
                    
                    # Show a plot of the generated distribution
                    
                    column(width = 8,
                           tags$style(type = "text/css", "#map {height: calc(100vh - 98px) !important;}"),
                           leafletOutput("map")
                    ),
                    
                    column(width = 2,
                           style=paste0('height: calc(100vh - 98px); padding:30px; border: 1px solid ',gray(0.9),'; background:',gray(0.95)),
                           strong("Outputs")
                           
                           )
           ),
           
           tabPanel("Additional Information")
)
