library(dplyr)

f1_2024 <- data.frame(
  Pilote = c("Max Verstappen", "Sergio Perez", "Lewis Hamilton", "George Russell", "Charles Leclerc", 
             "Carlos Sainz", "Lando Norris", "Oscar Piastri", "Fernando Alonso", "Lance Stroll", 
             "Pierre Gasly", "Esteban Ocon", "Alex Albon", "Logan Sargeant", "Valtteri Bottas", 
             "Guanyu Zhou", "Kevin Magnussen", "Nico Hülkenberg", "Yuki Tsunoda", "Daniel Ricciardo"),
  Ecurie = c("Red Bull", "Red Bull", "Mercedes", "Mercedes", "Ferrari", 
             "Ferrari", "McLaren", "McLaren", "Aston Martin", "Aston Martin", 
             "Alpine", "Alpine", "Williams", "Williams", "Sauber", 
             "Sauber", "Haas", "Haas", "RB", "RB"),
  Nationalité = c("Néerlandais", "Mexicain", "Britannique", "Britannique", "Monégasque", 
                  "Espagnol", "Britannique", "Australien", "Espagnol", "Canadien", 
                  "Français", "Français", "Thaïlandais", "Américain", "Finlandais", 
                  "Chinois", "Danois", "Allemand", "Japonais", "Australien"),
  Âge = c(26, 34, 39, 26, 26, 
          29, 24, 23, 42, 25, 
          28, 27, 27, 23, 34, 
          24, 31, 36, 23, 34),
  Courses_Disputées = c(180, 265, 332, 103, 120, 
                        180, 104, 24, 381, 140, 
                        130, 133, 84, 23, 216, 
                        46, 167, 202, 64, 240),
  Titres_Mondiaux = c(3, 0, 7, 0, 0, 
                      0, 0, 0, 2, 0, 
                      0, 0, 0, 0, 1, 
                      0, 0, 0, 0, 0),
  Pole_Positions = c(35, 12, 104, 8, 23, 
                     5, 2, 1, 22, 1, 
                     3, 1, 1, 0, 1, 
                     0, 1, 1, 1, 3),
  Podiums = c(100, 40, 197, 12, 35, 
              25, 13, 2, 107, 3, 
              4, 2, 4, 0, 67, 
              0, 2, 2, 1, 32),
  Points = c(412, 265, 314, 175, 237, 
             220, 205, 97, 400, 110, 
             90, 70, 65, 0, 150, 
             20, 15, 10, 5, 30),
  Victoires = c(15, 4, 103, 1, 5, 
                2, 1, 0, 32, 0, 
                1, 1, 0, 0, 10, 
                0, 1, 0, 0, 8)
)


View(f1_2024)

dim(f1_2024)

# Facteur ordonné : Expérience basée sur le nombre de courses disputées
experience <- cut(f1_2024$Courses_Disputées, 
                  breaks = c(0, 50, 150, 300, 400),
                  labels = c("Débutant", "Intermédiaire", "Expérimenté", "Légende"))
print(experience)


f1_2024 <- f1_2024 %>% 
  mutate(experience=if_else(Courses_Disputées>50,"Débutant", "Intermédiaire"))

f1_2024$experience <- cut(f1_2024$Courses_Disputées, 
                  breaks = c(0, 50, 150, 300, 400),
                  labels = c("Débutant", "Intermédiaire", "Expérimenté", "Légende"))

table(f1_2024$experience)

f1_2024[f1_2024$Courses_Disputées<50,]

#suppression de valeur ou de variable

f1_2024$Ecurie <- NULL #suppression de variable

summary(f1_2024$Âge)

f1_2024$Age2 <- f1_2024$Âge

f1_2024$Age2[f1_2024$Age2>35] <- NA  

summary(f1_2024$Age2)

f1_2024[9,"Pole_Positions"]


#Ajout d'une observation
f1_2024$experience1 <- rep(c("D","I","E","L"),5)
  
  
  
  
  


