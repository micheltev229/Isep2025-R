### Cours 1

## Application

# Ceci est un commentaire

# Creation de vecteur
x  <- c(1:7) # un vecteur de type numerique
typeof(x)
y <- as.character(x) # un vecteur de type caractere
typeof(y)

# Il est possible de l'utiliser comme calculatrice
1+1
sum(x)
sum(y)

sum(1) # renvoie 1
sum() # Somme vide renvoie 0

## Types de donnees (exercice)

# Jeu de données
# Un ensemble structure de donnees, souvent sous forme d'un data frame ou d'une table.
data(mtcars)

# Objets
# Tout element stocke en memoire dans R est un objet (vecteurs, matrices, listes, fonctions...).
x <- 42
y <- "Hello"

# Vecteurs
# La structure de base en R, contenant des elements du meme type (numerique, caractere, logique...).
v <- c(1, 2, 3, 4)
names <- c("Alice", "Bob")

# Facteurs
# Représentent des variables categoriques (comme des etiquettes ou des niveaux).
genre <- factor(c("Homme", "Femme", "Homme"))
levels(genre)

# Matrices
# Tableaux a deux dimensions contenant des donnees du même type.
mat <- matrix(1:9, nrow=3, ncol=3)
print(mat)

# Listes
# Contiennent plusieurs types d’objets, y compris des vecteurs, matrices, ou d'autres listes.
liste <- list(nom="Paul", age=25, scores=c(80, 90, 85))

# Data Frame
# Tableau de donnees a deux dimensions ou chaque colonne peut être d’un type different (comme un tableau Excel).
df <- data.frame(Nom=c("Alice", "Bob"), Age=c(25, 30), Score=c(90, 85))
print(df)





