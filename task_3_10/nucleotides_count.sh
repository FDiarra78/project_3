#!/bin/bash

echo "| Fichier        | A   | T   | G   | C   |"
echo "|----------------|-----|-----|-----|-----|"

for fasta in *.fasta; do
    [ -e "$fasta" ] || continue

    if [ ! -s "$fasta" ]; then
        continue
    fi

    sequence=$(grep -v "^>" "$fasta" | tr -d '\n' | tr '[:lower:]' '[:upper:]')

    a_count=$(echo "$sequence" | tr -cd 'A' | wc -c)
    t_count=$(echo "$sequence" | tr -cd 'T' | wc -c)
    g_count=$(echo "$sequence" | tr -cd 'G' | wc -c)
    c_count=$(echo "$sequence" | tr -cd 'C' | wc -c)

    printf "| %-14s | %-3s | %-3s | %-3s | %-3s |\n" "$fasta" "$a_count" "$t_count" "$g_count" "$c_count"
done
