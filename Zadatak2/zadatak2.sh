#!/bin/bash

if [ "$#" -ne 1 ]; then
    echo "Greška: Potrebno je proslijediti točno 1 broj."
    exit 1
fi

BROJ=$1

if [ "$BROJ" -ge 1 ] && [ "$BROJ" -le 10 ]; then
    
    > brojevi.txt
    
    for (( i=1; i<=$BROJ; i++ ))
    do
        echo $i >> brojevi.txt
    done

    echo "Datoteka brojevi.txt je uspješno kreirana s brojevima od 1 do $BROJ."
else
    echo "Greška: Broj $BROJ nije u rasponu od 1 do 10."
    exit 1
fi
