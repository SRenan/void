library(shiny)

shinyUI(pageWithSidebar(
  headerPanel("Input test"),
  sidebarPanel(
    HTML('<textarea id="foo" rows="4" cols="40">Default value</textarea>'),
    HTML('<button type="submit">Read</button>') #The input will be read only once submit is clicked
  ),
  mainPanel(
  h3(textOutput("txtarea"))
  )
))
