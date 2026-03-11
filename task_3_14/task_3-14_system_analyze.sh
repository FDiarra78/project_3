#!/bin/bash
# Script d'analyse des systèmes de fichiers avec df -h

echo "=== Analyse des systèmes de fichiers ==="
echo "Système de fichiers   Utilisation"
echo "-----------------------------------"

# Analyser la sortie de df -h en ignorant l'en-tête
df -h | awk 'NR>1 {
    printf "%-20s %s\n", $1, $5
    # Extraire le pourcentage (enlever le %)
    gsub(/%/, "", $5)
    if ($5 > 90) {
        print "  ⚠️  ATTENTION: " $1 " est plein à " $5 "% !"
    }
}'

echo "-----------------------------------"
