#!/bin/bash

check_root() {
    if [ $UID -ne 0 ]; then
        echo "Erreur : Ce script doit être exécuté en tant que superutilisateur (root)."
        exit 1
    else
        echo "OK : Script exécuté avec les droits root."
    fi
}

# Appel de la fonction
check_root

# Le reste du script (exemple)
echo "Actions administratives..."
