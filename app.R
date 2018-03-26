library(shinythemes)

shinyApp(
    ui = fluidPage(theme = shinytheme("cyborg"),
                   
                   sidebarPanel(
                       textInput("txt", "Text input:", "text here"),
                       sliderInput("slider", "Slider input:", 1, 100, 30),
                       actionButton("action", "Button"),
                       actionButton("action2", "Button2", class = "btn-primary")
                   ),
                   mainPanel(
                       tabsetPanel(
                           tabPanel("Explore Data"),
                           tabPanel("Tab 2", includeMarkdown('cancer-classification.Rmd'))
                       )
                   )
    ),
    server = function(input, output) {}
)
