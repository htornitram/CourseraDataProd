library(shiny)

needCalc <- function(goalPct, attempts, successes)
{
     
     # assumes 0 < goalPct < 100 based on input restrictions
     # returns vector of length 3 for outputs...
     if (attempts == 0) { 
           out <- c("nonexistent","1 attempt", 
                    "having a calculable success percentage") 
     }
     else if (successes > attempts) {
          out <- c("impossible","improvements in conceptual skills", 
             "understanding that you can't have more successes than attempts") 
     }
     else {
          rate <- successes / attempts
          txtRate <- paste0(round(rate * 100, 2), "%")
          
          if(rate == (goalPct / 100)) { 
               out <- c(txtRate, "doing nothing", 
                   paste0("maintaining a success percentage of exactly ", 
                          goalPct, "%") )
          }
          else if(rate > (goalPct / 100)) { 
               needf <- ceiling((successes-(goalPct / 100 * attempts)) / 
                                     (goalPct / 100))
               out <- c(txtRate, paste(needf, "failure(s)"),
                        paste0("a success percentage of ", 
                               goalPct, "% or lower") )
          }
          else { 
               needs <- ceiling(((goalPct / 100 * attempts) - successes) / 
                                     (1 - (goalPct / 100)))
               out <- c(txtRate, paste(needs, "success(es)"),
                         paste0("a success percentage of ", 
                              goalPct, "% or higher") )
          }
     }
     
     out #return
     
}

shinyServer(
     function(input, output) {
          out <- reactive({ needCalc(input$goalPct, 
                                     input$attempts, input$successes) })
          
          output$currPct <- renderText({out()[1]})
          output$need <- renderText({out()[2]})
          output$goal <- renderText({out()[3]})
     }
)
