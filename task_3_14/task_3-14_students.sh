#!/bin/bash
# Script pour manipuler students.txt

echo "=== 1. Noms des étudiants ==="
awk '{print $1}' students.txt

echo ""
echo "=== 2. Notes des étudiants ==="
awk '{print $2}' students.txt

echo ""
echo "=== 3. Numéro de ligne et nom ==="
awk '{print NR ". " $1}' students.txt
