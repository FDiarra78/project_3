#!/bin/bash
# Script pour calculer les statistiques des notes

echo "=== Statistiques des notes ==="

# 1. Somme des notes
somme=$(awk '{sum += $2} END {print sum}' students.txt)
echo "1. Somme des notes : $somme"

# 2. Moyenne des notes
moyenne=$(awk '{sum += $2; count++} END {print sum/count}' students.txt)
echo "2. Moyenne des notes : $moyenne"

# 3. Note maximale
max=$(awk 'NR==1{max=$2} $2 > max{max=$2} END {print max}' students.txt)
echo "3. Note maximale : $max"
