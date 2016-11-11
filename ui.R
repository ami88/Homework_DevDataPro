library(shiny)
shinyUI(fluidPage(
    titlePanel("Plot normal distribution"),
    sidebarLayout(
        sidebarPanel(
            h2("Input values"),
            sliderInput("slider1", "Mean", -90, 90, 0),
            sliderInput("slider2", "Std Dev", 0.1, 20, 1.),
            checkboxInput("show_xlab", "Show/Hide X Axis Label", value = TRUE),
            checkboxInput("show_ylab", "Show/Hide Y Axis Label", value = TRUE),
            textInput("myx0", "x to evaluate the probability", 0),
            checkboxInput("lt", "Lower tail", value = TRUE)
        ),
        mainPanel(
            h2("My Plot:"),
            textOutput("q1"),
            #textOutput("text1"),
            #textOutput("text2"),
            #textOutput("text3"),
            #textOutput("text4"),
            plotOutput("plot1")
        )
    )
))
