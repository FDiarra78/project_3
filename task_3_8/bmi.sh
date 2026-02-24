#!/bin/bash
echo "Entrez votre poids (en kg) :"
read poids
echo "Entrez votre taille (en mètres) :"
read taille
imc=$(echo "$poids $taille" | awk '{printf "%.2f", $1 / ($2 * $2)}')
imc_arrondi=$(printf "%.0f" "$imc")
echo "Votre indice de masse corporelle (IMC) est : $imc_arrondi"
