#!/bin/bash

# Création des fichiers test1.txt ... test10.txt
for i in {1..10}
do
    touch "test$i.txt"
done

echo "Fichiers créés."

# Suppression en ordre inverse
i=10
while [ $i -ge 1 ]
do
    rm "test$i.txt"
    i=$((i - 1))
done

echo "Fichiers supprimés en ordre inverse."
