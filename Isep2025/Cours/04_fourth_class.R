# Pratique
# Manipulation de dataframe

homework_df <- data.frame(
  id = 1:5,
  nom = c("Michel", "Marie", "Trésor", "Yvan", "Axelle"),
  sexe = c("Homme", "Femme", "Homme", "Homme", "Femme"),
  age = c(21, 19, 18, 21, 20),
  sit_mat = c("Célibataire", "Marié", "Marié", "Célibataire", "Célibataire"),
  entrainement = c("Oui", "Non", "Oui", "Oui", NA),
  enfants = c(2, 3, 1, 0, 2),
  disponibilite = c("Non", "Non", NA, "Oui", "Oui"),  # Valeur manquante (NA)
  part_revenu_cons_pourcent = c(80, 90, 75, 70, 50),
  salarie = c("Non", NA, "Non", "Oui", "Oui")  # Valeur manquante (NA)
)

dim(homework_df)


