#!/bin/bash

if [ "$#" -ne 1 ]; then
    echo "Greška: Potrebno je proslijediti točno jedan argument (apsolutnu putanju)."
    exit 1
fi

PUTANJA=$1

if [ ! -d "$PUTANJA" ]; then
    echo "Greška: Direktorij na putanji $PUTANJA ne postoji."
    exit 1
fi

if [ ! -d "$PUTANJA/.git" ]; then
    echo "Greška: Navedeni direktorij nije Git repozitorij."
    exit 1
fi

cd "$PUTANJA" || exit

echo "Informacije o repozitoriju kreirane: $(date)" > repozitorij_info.txt

git add repozitorij_info.txt

git commit -m "Automatski commit: dodana info datoteka"

echo ""
echo "--- Git Logovi ---"
git log --oneline -n 5
