library(shiny)

# Define server logic required to generate and plot a random distribution
shinyServer(function(input, output) {
  
  #Reactive is for expression whose result will change over time (from ?reactive)
  txt<-reactive({
    paste0("input: ", input$foo)
  })
  output$txtarea<-txt
})


