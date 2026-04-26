#!/bin/bash

if [ "$#" -ne 1 ]; then
    echo "Greška: Potrebno je proslijediti samo jedan argument."
    exit 1
fi

DIREKTORIJ=$1

if [ ! -d "./$DIREKTORIJ" ]; then
    echo "Greška: Direktorij '$DIREKTORIJ' ne postoji u trenutnom direktoriju."
    exit 1
fi

echo "Započeto komprimiranje datoteka iz mape $DIREKTORIJ..."

zip -j svi_zapisi.zip "$DIREKTORIJ"/*

if [ $? -eq 0 ]; then
    echo "Uspjeh! Stvorena je datoteka svi_zapisi.zip."
else
    echo "Došlo je do pogreške prilikom komprimiranja."
fi
