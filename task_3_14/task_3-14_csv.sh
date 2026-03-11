#!/bin/bash
# Script pour analyser data.csv
# Format: ID,Produit,Prix

echo "=== 1. Noms des produits ==="
awk -F',' '{print $2}' data.csv

echo ""
echo "=== 2. Produits > 20€ ==="
awk -F',' '$3 > 20 {print $2 " - " $3 "€"}' data.csv

echo ""
echo "=== 3. Prix total ==="
total=$(awk -F',' '{sum += $3} END {print sum}' data.csv)
echo "Prix total : $total €"
