#!/bin/bash

if [ "$#" -ne 2 ]; then
    echo "Potrebno je proslijediti točno 2 argumenta."
    exit 1
fi

DIREKTORIJ=$1
NASTAVAK=$2

if [ ! -d "$DIREKTORIJ" ]; then
    echo "Greška: Direktorij ne postoji."
    exit 1
fi

pronadjeno=0
for datoteka in "$DIREKTORIJ"/*"$NASTAVAK"; do
    if [ -f "$datoteka" ]; then
        basename "$datoteka"
        pronadjeno=$((pronadjeno + 1))
    fi
done

if [ $pronadjeno -eq 0 ]; then
    echo "Nema takvih datoteka."
fi
