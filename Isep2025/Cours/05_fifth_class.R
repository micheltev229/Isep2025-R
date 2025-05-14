## Base de donnees
data("co2")
co2base <- as.data.frame(CO2)
class(co2base)
sum(co2base$conc)

## Importer une base donnee
library(readxl)
library(openxlsx)
library(haven)

data<-readxl::read_excel("cancer_data.xlsx")
View(data)

## Creation de fonction

sumserere <- function() {
  print("Je m'appelle Michel")
}

## Homework 
# Créer des fonctions en utilisant des structures if, ifelse, for
# recherche de nombre premier
# resoudre une equation simple
# resoudre un systeme d'equation
# resoudre le probleme d'optimisation //calcul du hessien, du gradient
# inverser une matrice
#etude de cas : au primaire : aider l'enseignant a resoudre les 4 operations






