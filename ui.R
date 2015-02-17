library(shiny)

# Define UI for dataset viewer application
shinyUI(
     pageWithSidebar(
          # Application title
          headerPanel("Success Percentage Target Calculator"),
          
          sidebarPanel(
 
               numericInput('goalPct', "Target Percent", 50, min = 1, 
                            max = 99, step = 1),
               numericInput('attempts', "Attempts so far...", 9),
               numericInput('successes', "Successes so far...", 4),
               submitButton('Submit'), "",
               h3("Instructions:"),
               paste("Enter your target percentage as a whole number, and", 
                    "your attempts and successes to date, then click Submit."),
               paste("The application will tell you what you need to do to",
                     "get to your target.")
          ),
          mainPanel(
               h3('Results'),
               h4('Your current success percentage is'),
               textOutput("currPct"),
               h4('You need a consecutive string of'),
               textOutput("need"),
               h4('to reach your goal of'),
               textOutput("goal")
          )
     )
)
