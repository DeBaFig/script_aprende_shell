#!/bin/bash
####################################
#
# Menu principal e inicio do script
#
####################################


menu_principal () {
    clear
    nome=$(whoami)
    while [ true ]; do
        clear
        echo "Bem-vindo(a) ${nome}!"
        echo "1. Introdução ao Terminal"
        echo "2. Comandos Básicos I"
        echo "3. Exercícios de comandos"
        echo "Digite a opção desejada ou q para sair: "
        ./helpers.sh "repete" 10
        read line
        if [ "$line" = "1" ]; then
            ./introducao.sh
        fi
        if [ "$line" = "2" ]; then
            ./comandos.sh
        fi
        if [ "$line" = "3" ]; then
            echo "Opcao 3"
        fi
        if [ "$line" = "q" ]; then
            exit 0
        fi
    done
    
}

menu_principal
