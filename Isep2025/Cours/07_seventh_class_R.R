# packages
library(dplyr)
library(haven)
library(tidyverse)

# dossier
senegaldata <- "C:/Users/bmd-tech/Documents/ISEP2/Semestre 2/Traitements Statistiques avec R/Isep2025/SEN2018_menage/"
listfile <- list.files(senegaldata)
print(listfile)

#donnees
s00_me_SEN2018 <- read_dta(paste0(senegaldata, "/s00_me_SEN2018.dta"))
s01_me_SEN2018 <- read_dta(paste0(senegaldata, "/s01_me_SEN2018.dta"))

## 1. 
# grappe + menage
View(s01_me_SEN2018)
dim(unique.data.frame(s01_me_SEN2018[,
                                     c("grappe","menage","s01q00a")]))
dim(unique.data.frame(s01_me_SEN2018[,
                                     c("grappe","menage")]))

## 2. Suppression des doublons


## 3. Membres reels du menage
s01_me_SEN2018a1 <- s01_me_SEN2018 %>%
  mutate(ifmember = ifelse(s01q12==1 | s01q13==1,1,0))
sum(s01_me_SEN2018a1$ifmember, na.rm = T) # 66109 < 66119


## 4. Calcul de la taille du menage
s01_me_SEN2018a1 <- s01_me_SEN2018a1 %>%
  group_by(grappe, menage) %>%
  mutate(hhsize = sum(ifmember, na.rm = T))
summary(s01_me_SEN2018a1$hhsize)

## 5.Taille moyenne
taille_moyenne <- mean(s01_me_SEN2018a1$hhsize)
Print
         









