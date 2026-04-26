#!/bin/bash

MAPA="screenshots"

if [ ! -d "$MAPA" ]; then
    echo "Greška: Mapa $MAPA ne postoji."
    exit 1
fi

brojac=1

echo "Preimenovanje datoteka..."
echo "--------------------------"

for putanja in "$MAPA"/*; do
    if [ -f "$putanja" ]; then
        
        ime=$(basename "$putanja")
        
        novo_ime="screenshot_${brojac}_${ime}"
        
        mv "$putanja" "$MAPA/$novo_ime"
        
        echo "$novo_ime"
        
        # Povećavamo brojač
        brojac=$((brojac + 1))
    fi
done
