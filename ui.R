# ui.R

ui <- fluidPage(
  sidebarLayout(
    sidebarPanel(
      
      radioButtons("radio", "Time Scales",
                   choices = c("Year", "Month","Time"), 
                   selected = "Year", inline = TRUE),
      
      sliderInput("slider_year", h5("Year"),
                  min = 2013, max = 2017, value = 2013,
                  step = 1, animate = TRUE,
                  pre = 'Year'),
      
      sliderInput("slider_month", h5("Month"),
                  min = 1, max = 12, value = 1,
                  step = 1, animate = TRUE),
      
      sliderInput("slider_time", h5("time"),
                  min = 0, max = 23, value = 0,
                  step = 1, animate = TRUE)
    ),
    
    mainPanel(leafletOutput("mymap", height = 1000))
    
  )
)