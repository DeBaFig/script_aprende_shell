#!/bin/bash
####################################
#
# Funções auxiliares para evitar
# repetições desnecessárias
#
####################################

# Função aguarda um enter para ir para proxima
# página, importante para leitura com calma
# e organizar a página num número máx de linhas
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

# Função que permite pular linha vazia e
# também fazer uma linha de repetição 
# para separar o contéudo
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
# Função para verificar se o input
# é igual ao enviado no argumento 2
pergunta_comando () {
    while [ true ]; do
        echo -e "${1}"
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


# essas condicionais permitem que eu chame
# o script definindo via argumento 1 
# qual script vai rodar
if [ "$1" = "repete" ]; then
    if [ $# = 3 ]; then
        repete $2 $3
    else
        repete $2
    fi
fi
if [ "$1" = "pergunta" ]; then
        pergunta_comando "${2}" "${3}" "${4}"
fi
if [ "$1" = "enter" ]; then
        espera_enter
fi

