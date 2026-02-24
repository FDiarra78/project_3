#!/bin/bash
if [ $# -ne 2 ]; then
    echo "Erreur : Pas assez de données d'entrée."
    echo "Usage: ./impulse.sh [nom_du_gène] [niveau_expression]"
else
    gene=$1
    expression=$2
    echo "L’expression du gène $gene est de $expression unités"
fi

