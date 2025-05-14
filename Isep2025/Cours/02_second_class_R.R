# Vecteur caractere

x_char <- c("a", "b", "c", "d")
print(x_char)
typeof(x_char)

# Vecteur logique (logical)
x_log <- c(TRUE, FALSE, TRUE, FALSE, TRUE)
sum(x_log)
typeof(x_log)

# Vecteur compexe
x_complex <- c(1+2i, 3+4i)
print(x_complex)
typeof(x_complex)

# Vecteur raw
x_raw <- raw(4)
print(x_raw)
typeof(x_raw)

# Facteur (factor)
x_fact <- factor(c("homme", "femme", "homme","femme", "homme"))
print(x_fact)
sexe <- rep(c("homme", "femme"), 7)
length(sexe)

# On peut ordonner les facteurs

# Listes
ma_liste <- list(
  nombre = 42,
  texte = "Bonjour",
  logique = TRUE,
  vecteur = c(1, 2, 3)
)
print(ma_liste[2])

ma_liste <- list(42, "Bonjour", TRUE, c(1, 2, 3))
print(ma_liste)

# Data frame
mon_df <- data.frame(
  id = 1:4,
  sexe = c("Homme", "Homme", "Homme", "Femme"),
  nom = c("Michel", "Yvan", "Christange", "Alice"),
  age = c(20, 21, 20, 19),
  en_ligne = c(TRUE, FALSE, TRUE, FALSE)
)
print(mon_df)

# Occurences
x_fact <- factor(c("homme", "femme", "homme","femme", "homme"))
table(x_fact)
print(x_fact)


mon_df <- data.frame(
  id = 1:4,
  sexe = c("Homme", "Homme", "Homme", "Femme"),
  nom = c("Michel", "Yvan", "Christange", "Alice"),
  b = list("a"),
  age = c(20, 21, 20, 19),
  en_ligne = c(TRUE, FALSE, TRUE, FALSE)
)
print(mon_df)

dataFrame <- data.frame(ma_liste)
print(dataFrame)

# Matrices
ma_matrice <- matrix(1:9, nrow =3, ncol =3)
print(ma_matrice)

# Construire une matrice avec des vecteurs
v1 <- c(1, 2, 3)
v2 <- c(-1, -2, -3)
v3 <- c(5, 7, 9)

mat1 <- matrix(c(v1, v2, v3), nrow = 3, ncol = 3)
print(mat1)

mat2  <- rbind(v1, v2, v3) # r pour row, c pour column
print(mat2)

# Homework
# Creer un data frame de 10 variables, en y ajoutant des facteurs; nombre
# au choix ! 

homework_df <- data.frame(
  id = 1:3,
  nom = c("Michel", "Marie", "Trésor"),
  sexe = c("Homme", "Femme", "Homme"),
  age = c(21, 19, 18),
  sit_mat = c("Célibataire", "Marié", "Marié"),
  entrainement = c("Oui", "Non", "Oui"),
  enfants = c("Oui", "Non", "Oui"),
  disponibilite = c("Non", "Non", NA),
  part_revenu_cons_pourcent = c(80, 90, 75),
  salarie = c("Non", NA, "Non")
)

print(homework_df)