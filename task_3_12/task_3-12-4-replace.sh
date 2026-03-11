#!/bin/bash
# Script pour remplacer les espaces par des tabulations dans sequences.txt

sed 's/ /\t/g' sequences.txt > sequences.tab.txt
echo "Fichier sequences.tab.txt créé avec des tabulations."
