#!/bin/bash
# Script pour filtrer les étudiants par note

echo "=== 1. Étudiants avec note > 80 ==="
awk '$2 > 80 {print $1 " - " $2}' students.txt

echo ""
echo "=== 2. Étudiants avec note < 70 ==="
awk '$2 < 70 {print $1 " - " $2}' students.txt

echo ""
echo "=== 3. Première ligne du fichier ==="
head -n 1 students.txt
