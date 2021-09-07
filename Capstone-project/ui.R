library(shiny)

ui <- navbarPage('Coursera Capstone Project - Word Prediction',
                 
    tabPanel('Application',
             fluidRow(align = 'left',
                      column(8, offset = 2,
                             style = 'width:700px;inline-block;horizontal-align:center',
                             h2('Word Prediction'),
                             p('This is simple word prediction application. Type some text into the
                             text field bellow and the application will suggest up to 3 words based
                               on your input.'),
                             textInput('text','Enter text','', placeholder = 'Enter text here (English only)'),
                             h3('Suggested words'),
                             textOutput('suggested')
                             )
                      )
             ),
    tabPanel('About',
             fluidRow(align = 'left',
                      column(8, offset = 2, style = 'width:700px;inline-block;horizontal-align:center',
                             h2('Coursera Data Science Capstone Project'),
                             p('Capstone project is the last course of Coursera Data Science specialization. It is intended to 
                                        showcase the concepts learned in the previous courses. For this project, the goal is to create 
                                        an application which will predict the next word based on user input.'),
                             h3('Basic information about the application'),
                             HTML('<p>This project is being run in collaboration with SwiftKey. As a partner, they provide the data which
                             is used to create and train the model. Data is collected from various blogs, news and Twitter sources and can be found 
                                <a href="https://d396qusza40orc.cloudfront.net/dsscapstone/dataset/Coursera-SwiftKey.zip">here</a>.
                                  </p>'),
                             p(),
                             HTML('<p>This data set is cleaned and processed remove numbers, punctuations and profanity words thet may be present.
                                        Since the data set is quite large, only about 2% is used to create and train the prediction model. Also, only
                                        English text is used for processing.</p>'),
                             HTML('<p>
                                Application uses 
                                <a href="https://en.wikipedia.org/wiki/N-gram">n-gram language model</a>
                                 for prediction of the next word. For the 
                                        actual prediction algorithm, 
                                <a href="&#39;https://en.wikipedia.org/wiki/Markov_chain">Markov chain algorithm</a>
                                 is used.
                              </p>')
                      )
             )
             )
)

# ui <- fluidPage(
#     fluidRow(textInput("text", "Enter your text here"), 
#              align = 'center')
# )
# server <- function(input, output) {
#     sampleText <- renderText({input$text })
# }
# shinyApp(ui, server)