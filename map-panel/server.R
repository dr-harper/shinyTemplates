

shinyServer(function(input, output) {

    # Add map
    output$map <- renderLeaflet({
        
        leaflet() %>%
            addTiles() %>%
            setView(lng = -1.40, lat = 50.9, zoom = 10)
        
        
    })
    
})
