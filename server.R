

data(mtcars)
init_fit <- lm(mpg ~ ., data = mtcars)
best_fit <- step(init_fit, direction = "both")
prediction <- function(wt1,qsec1,am1) {
am2=as.numeric(as.character(am1))
new.df <- data.frame(wt=wt1,qsec=qsec1,am=am2)
pr<-predict(best_fit,new.df)
return(pr)
}
shinyServer(
function(input,output) {
output$howtouse <-renderPrint(" step 1") 
output$owt <-renderPrint({input$wt})
output$oam <-renderPrint({input$am})
output$oqsec <-renderPrint({input$qsec})
output$prediction <-renderPrint({prediction(input$wt,input$qsec,input$am)})
}
)
