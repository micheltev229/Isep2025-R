# 1. Chargement des bibliothèques nécessaires
library(haven)         # Pour importer les fichiers .dta
library(dplyr)         # Pour manipulation de données
library(FactoMineR)    # Pour faire l'ACP
library(factoextra)    # Pour visualiser l'ACP
library(stringr)       # Pour la manipulation des noms de variables

# 2. Définition du chemin vers le dossier de la base
install.packages("rstudioapi")
senegaldata <- dirname(rstudioapi::getSourceEditorContext()$path)

# 3. Importation de la base
ma_base <- read_dta(paste0(senegaldata, "/s10_2_me_SEN2018.dta"))

# VARIABLES ET LABELS
var_types_labels <- data.frame(
  Variable = names(ma_base),
  Type = sapply(ma_base, function(x) class(x)[1]),
  Label = sapply(ma_base, function(x) attr(x, "label"))
)
View(var_types_labels)

# 1. Sélection des variables quantitatives avec peu de valeurs manquantes
vars_quant <- ma_base %>%
  select(where(is.numeric)) %>%
  select(where(~ mean(is.na(.)) < 0.3))

# 2. Supprimer les variables constantes (variance nulle)
vars_quant <- vars_quant %>% select(where(~ sd(., na.rm = TRUE) > 0))

# 3. Retirer les identifiants s’ils sont présents
vars_quant <- vars_quant %>% select(-any_of(c("vague", "grappe", "menage")))

# 4. Imputation des valeurs manquantes avec la moyenne
vars_imputed <- vars_quant %>%
  mutate(across(everything(), ~ ifelse(is.na(.), mean(., na.rm = TRUE), .)))

# 5. Vérifier qu’il n’y a plus de NA ni de variance nulle
stopifnot(!any(is.na(vars_imputed)))
stopifnot(all(sapply(vars_imputed, sd) > 0))

# 6. Standardisation
vars_scaled <- scale(vars_imputed)

# 7. Analyse en Composantes Principales (ACP)
res_acp <- PCA(vars_scaled, graph = FALSE)

# 8. Visualisation
library(factoextra)
fviz_eig(res_acp, addlabels = TRUE, ylim = c(0, 50))
fviz_pca_var(res_acp, col.var = "cos2", gradient.cols = c("grey", "blue"), repel = TRUE)
fviz_pca_ind(res_acp, col.ind = "cos2", gradient.cols = c("grey", "red"), repel = TRUE)

# Coordonnées des individus (axes principaux) ----
coord_individus <- as.data.frame(res_acp$ind$coord)
coord_individus <- cbind(id = rownames(coord_individus), coord_individus)

# Contribution des variables d'origine à chaque axe ----
contrib_variables <- as.data.frame(res_acp$var$contrib)
contrib_variables <- cbind(variable = rownames(contrib_variables), contrib_variables)

# Affichage des aperçus
cat(" Coordonnées des individus (nouvelles variables via ACP) :\n")
print(head(coord_individus))

cat("\n Contributions des variables d’origine aux axes principaux :\n")
print(head(contrib_variables))
