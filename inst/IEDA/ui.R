library(shiny)
library(shinyjs)
library(shinydashboard)
library(plotly)
library(DT)
library(xlsx)
library(evaluate)
library(shinycssloaders)


ui = dashboardPage(title = "RadhiEDA",
  skin = "purple",
  dashboardHeader(title = 'Radhi EDA'
                ),

  # ***************************Dashboard Side Bar***************************
  dashboardSidebar(
    width = 250,
    sidebarMenu(id = "MenuTabs",
      
      menuItem("Data Source", tabName = "DataSource", icon = icon("file")),
      menuItem("Univariate Analysis", tabName = "Univariate", icon = icon("bar-chart")),
      menuItem("Bi Variate Scatter Plot", tabName = "ScatterPlot", icon = icon("dot-circle-o")),
      #menuItem("Bi Variate Box Plot", tabName = "BoxPlot", icon = icon("sliders")),
      menuItem("Bi Variate Group Bar Plot", tabName = "GBarPlot", icon = icon("bar-chart"))
    )
  ),

  # ***************************Dashboard Body***************************
  dashboardBody(
    tabItems(

      # ***************************Data Source***************************
      tabItem(tabName = "DataSource",
              source("./ui_1DataSource.R", local = T)[1]),

      # ***************************Univariate Analysis***************************
      tabItem(tabName = "Univariate",
              source("./ui_2Univariate.R", local = T)[1]),

      # ***************************Bi Variate Scatter Plot***************************
      tabItem(tabName = "ScatterPlot",
              source("./ui_3BiVariateScatter.R", local = T)[1]),

      # ***************************Bi Variate Group Bar Plot***************************
      tabItem(tabName = "GBarPlot",
              source("./ui_5BiVariateBar.R", local = T)[1])
    )
  )
)

