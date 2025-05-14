# Array (tableau à 3 dimensions)
mon_array <- array(1:24, dim = c(2, 3, 4))
print(mon_array)

# Verification du type de donnees
is.character("X")
is.numeric(5)

# Operateurs
5 ==  5
5 != 3
5 > 3
5 < 3
TRUE & FALSE
TRUE | FALSE
!TRUE

# Operateurs speciaux
library(magrittr)
1:10 %>% mean() %>% round(2)

# Operateur natif (|>)
1:10 |> mean() |> round(2)

# Creation de sequence
seq(1, 10, by = 2)
seq(0, 1, length.out = 5)

# Indexation des valeurs
x <- c(10, 20, 30, 40, 50)
x[1] #premier
x[c(1, 3)] #premier et troisieme
x[-2] #tout sauf le deuxieme

# exemple de dataframe
df <- data.frame(
  id = 1:5,
  valeur = c(10, 20, 30, 40,50),
  groupe = c("A", "B", "C", "D", "E")
)

library(dplyr)

df %

















