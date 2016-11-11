library(shiny)
shinyServer(function(input, output) {
    myq <- reactive({
        p <- pnorm(as.numeric(input$myx0), mean=as.numeric(input$slider1),
                   sd=as.numeric(input$slider2), lower.tail = input$lt)
        paste("My probability = ", p, sep=" ")
    })
    output$q1 <- renderText({
        myq()
    })
    
        output$plot1 <- renderPlot({
        linf <- -100
        lsup <- 100
        mymean <- input$slider1
        mysd <- input$slider2
        mydelta <- 0.1
        myx <- seq(linf,lsup,mydelta)
        myy <- dnorm(myx,mymean, mysd)
        myxlim <- c(-100,100)
        xlab <- ifelse(input$show_xlab, "X Axis", "")
        ylab <- ifelse(input$show_ylab, "Y Axis", "")
        plot(myx, myy,type="l", lty=1,
             xlab=xlab, ylab=ylab, xlim=myxlim)
        abline(v=input$myx0, col="red")
    })
        
})
