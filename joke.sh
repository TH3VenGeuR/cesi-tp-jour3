#!/bin/bash

if ! command -v jq &> /dev/null
then
    echo "Le programme jq n'est pas installé. Installez-le avec : sudo apt install jq"
    exit 1
fi

response=$(curl -s https://icanhazdadjoke.com/ -H "Accept: application/json")

joke=$(echo "$response" | jq -r '.joke')

echo ""
echo "Voici ta blague aléatoire :"
echo "-------------------------------------"
echo "$joke"
echo "-------------------------------------"
