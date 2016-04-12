library(shiny)


shinyUI(
pageWithSidebar(
  headerPanel("Miles Per Galon Prediction"),
  sidebarPanel(
  numericInput('wt','Weight in Tons',2.0,min=0.5,max=4.0, step=0.1),
  checkboxGroupInput("am","Manual/Automatic Transmission",
                     c("Manual" = 1,
                       "Automatic" = 0),0),

  numericInput('qsec','Quarter mile time in Seconds',20),

submitButton('Submit')
),
mainPanel(
h3('How to use this app:'),
h4('This app calculates a car Milage Per Galon per given:'),
h4('- Weigth'),
h4('- Transmission Type'),
h4('- Quarter mile time per Second'),
h4('In order to calculate the Milage Per Galon, please enter the'),
h4('requested numbers on the left panel and press the submit'), 
h4('button.  The numbers that you entered will appear below'), 
h4('with the predicted calculated number for the'), 
h4('Milage per hour at the bottom of the page.'),
h4('----------------------------------------------------------'),
h4('Weigth entered:'),
verbatimTextOutput("owt"),
h4('Transmission (0 = automatic, 1 = manual) entered:'),
verbatimTextOutput("oam"),
h4('Quarter mile time entered:'),
verbatimTextOutput("oqsec"),
h4('Which resulted in prediction of Miles Per Galon'),
verbatimTextOutput("prediction")
)
)
)

                      