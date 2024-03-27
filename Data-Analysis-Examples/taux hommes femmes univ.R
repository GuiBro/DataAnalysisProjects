# Ratios femmes-hommes et graphiques dans les universités mondiales

veri = read.csv(file.choose()) # veri.csv Fichier à Téléchargez.
summary(veri) # Récapitulatif des données.

# Traçage du graphique à barres en fonction de la différence entre le nombre d'hommes et de femmes
barplot(veri$Gap, col = heat.colors(21), ylab = "males-females differences", 
        names.arg = veri$School, srt=45, las=2, 
        main = "females-males differences in universities")

# Traçage du graphique en fonction du ratio hommes-femmes. Peut être compliqué de tirer des conclusions sur la seule différence..
barplot(veri$Men/veri$Women, col = heat.colors(21), ylab = "males/females rate", 
        names.arg = veri$School, srt=45, las=2, 
        main = "males/females rate in universities")


boxplot(veri$Men/veri$Women, xlab="Oranlar", main="females-males Dağılımı\nBoxPlot", 
        col.lab=2, col.main=4, col.axis="magenta4", col="orange", horizontal = T)
help("boxplot")
# A expliquer :
# Le taux d'hommes dans les université (selon MIT Californie Du Sud) est plus bas de près de 1,2 fois chez les hommes,
# Mais les hommes sont 1,6 fois plus susceptibles que les femmes au plus haut niveau -> inégalités
# et dans ces universités, les hommes étudient en moyenne 1,4 fois plus que les femmes.
# Alors que la proportion d'hommes est la plus élevée au MIT, SoCal (Californie du Sud) a la proportion la plus faible.

# Mais est-ce que le MIT est assez représentatif ?
