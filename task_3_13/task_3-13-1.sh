#!/bin/bash
# Script pour remplacer le chemin de la base de données dans settings.php
# Utilisation d'un séparateur alternatif '|' pour plus de lisibilité

sed -i 's|/var/lib/mysql/data|/mnt/ssd/mysql|' settings.php

echo "Le chemin a été modifié dans settings.php"
