#!/bin/bash

# Fonction pour obtenir le nombre de fichiers dans le répertoire actuel
get_file_count() {
    echo $(ls -1 | wc -l)
}

# Nombre de fichiers dans le répertoire actuel
file_count=$(get_file_count)

echo "Devinez combien de fichiers se trouvent dans le répertoire actuel :"

while true; do
    read -p "Votre estimation : " guess
    if [[ ! $guess =~ ^[0-9]+$ ]]; then
        echo "Veuillez entrer un nombre valide."
    elif [[ $guess -lt $file_count ]]; then
        echo "Trop bas ! Essayez encore."
    elif [[ $guess -gt $file_count ]]; then
        echo "Trop haut ! Essayez encore."
    else
        echo "Félicitations ! Vous avez trouvé le bon nombre de fichiers."
        break
    fi
done
