#project - IU

shinyUI(
  pageWithSidebar(
    # Application title
    headerPanel("Are you resting enough?"),
    # Setting type of input needed
    sidebarPanel(
      numericInput('hours', 'Total sleep time this week (in hours)', 0, min = 0, max = 56, step = 0.5),
      numericInput('days', 'Day of the week (Please enter 1 to 7, with 1 being Monday and 7 being Sunday)', 1, min = 1, max = 7, step = 1),
      submitButton('Submit') #so that result is only evaluated after inputs are confirmed by user
    ),
    mainPanel(
      # shows what user input
      h5('You slept these number of hour(s)'),
      verbatimTextOutput("inputValue1"),
      h5('over these number of day(s)'),
      verbatimTextOutput("inputValue2"),
      # shows output done by formula in server.R 
      h2('You need this amount of sleep this week to stay healthy :)'),
      h5('hours/day'),
      verbatimTextOutput("hoursToSleep")
    )
  )
)
