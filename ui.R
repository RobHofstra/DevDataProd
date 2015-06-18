shinyUI(fluidPage(
  titlePanel("Survival of passengers on the Titanic"),

  sidebarLayout(position = "right",
  sidebarPanel(
    radioButtons("X", label = h4("Choose X-axis:"),
                 choices = list("Class", "Sex", "Age", "Survived"), 
                 selected = "Class"),
    radioButtons("Y", label = h4("Choose Y-axis:"),
                 choices = list("Class", "Sex", "Age", "Survived"), 
                 selected = "Survived")
  ),
  mainPanel( 
    plotOutput('Plot'),
    h4("Select your own view of the Titanic data set",align = "center"),
    p("The Titanic data set has the people who were onboard attributed with 4 different catagories. 
      With the radio buttons on the right, you can select wich two categories 
      you'd like to see in the plot. All views yield the same number of people.
      You can even select two of the same categories, the plot will then show a histogram.")
  ) 
)))