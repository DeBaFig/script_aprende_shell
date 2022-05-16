#!/bin/bash


continua_while () {
    while [ true ]; do
        repete "60" "~"
        echo "Digite: 'q'(sair) ou <ENTER>(continuar): "
        read line
        if [ "$line" = "q" ]; then
            clear
            exit 1
        fi
        if [ "$line" = "" ]; then
            clear
            break;
        fi
    done
}
espera_enter () {
    while [ true ]; do
        repete "70" "~"
        echo "<ENTER> para continuar: "
        read line
        if [ "$line" = "" ]; then
            clear
            break;
        fi
    done
}

repete () {
    local start=1
    local end=${1:-80}
    local str="${2:-=}"
    local range=$(seq $start $end)
    if [ $# = 1 ]; then
        for i in $range ; do echo; done
    fi
    if [ $# = 2 ]; then
        for i in $range ; do echo -n "${str}"; done
    fi
    echo
}

pergunta_comando () {
    while [ true ]; do
        echo "${1}"
        repete "13"
        echo "('q' para sair) Digite o comando abaixo:"
        read line
        if [ "${line}" = "${2}" ]; then
            clear
            echo "A resposta correta: ${2}"
            echo "Muito bem!"
            repete 13
            espera_enter
            exit 2
        else
            clear
            echo "${line} não está correto, tente novamente"
            echo "(Dica) ${3}"
        fi
        if [ "$line" = "q" ]; then
            clear
            exit 1
        fi
    done
}

if [ "$1" = "continue" ]; then
    continua_while
fi
if [ "$1" = "repete" ]; then
    if [ $# = 3 ]; then
        repete $2 $3
    else
        repete $2
    fi
fi
if [ "$1" = "pergunta" ]; then
        pergunta_comando "${2}" "${3}" "${4}"
        espera_enter
fi
if [ "$1" = "enter" ]; then
        espera_enter
fi

