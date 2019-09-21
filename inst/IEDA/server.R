library(dplyr)
library(xlsx)
library(DT)
library(tools)
library(stringr)

options(shiny.maxRequestSize=200*1024^2)
rm(list = ls())


shinyServer(function(input, output, session) {
  options(warn =-1)
  
  setwd(dirname(rstudioapi::getActiveDocumentContext()$path))

  source("./server_1DataSource.R",local=T)

  source("./server_2Univariate.R",local=T)

  source("./server_3BiVariateScatter.R",local=T)

  source("./server_5BiVariateBar.R",local=T)
  

})
