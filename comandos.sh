#!/bin/bash
####################################
#
# Explicação dos comandos básicos
# alguns exercícios ao final 
# da função
#
####################################


comando_pwd (){
    clear
    echo "pwd - Print Working Directory"
    echo 
    echo "O output desse comando mostra o diretório/pasta em que você"
    echo "está no momento"
    ./helpers.sh "repete" 11
    ./helpers.sh "enter"
    echo 
    ./helpers.sh "pergunta" "Digite o comando pwd" "pwd" "Tenta escrever: pwd"
    echo "O output do comando é o seguinte:"
    pwd
    ./helpers.sh "repete" 13
    ./helpers.sh "enter"
}

comando_ls (){
    clear
    echo "ls - Listing Files"
    echo 
    echo "O output desse comando mostra uma lista dos arquivos que estão"
    echo "diretório/pasta que você passar como argumento, ou caso não"
    echo "passe nenhum argumento vai mostrar os do diretório que você"
    echo "está no momento."
    echo
    echo "Algumas opções utilizadas são as seguintes:"
    ./helpers.sh "repete" 6
    ./helpers.sh "enter"
    echo "ls -R"
    echo
    echo "Essa opção mostra recursivamente os diretórios e arquivos"
    echo "no caminho indicado no argumento ou no diretório atual"
    echo "exemplo: Se você tiver o seguintes diretórios e arquivos"
    echo "pasta1/pasta2/arquivo.txt o resultado de um ls -R dentro de"
    echo "pasta1 seria isso:"
    echo
    mkdir -p pasta1/pasta2/arquivo.txt
    ls -R pasta1
    rm -r pasta1
    ./helpers.sh "repete" 2
    ./helpers.sh "enter"
    echo "ls -l"
    echo
    echo "O comando ls sozinho mostra somente os nomes dos arquivos,"
    echo "porém se você quiser mais informação sobre cada um dos"
    echo "arquivos, você pode usar o comando 'ls -l'"
    echo
    echo "Muito útil principalmente para informações de permissões,"
    echo "criação, etc..."
    echo "Exemplo:"
    mkdir -p pasta1/teste.txt
    ls -l pasta1
    ./helpers.sh "repete" 6
    ./helpers.sh "enter"
    rm -r pasta1
}

comando_cd (){
    clear
    echo "cd - Changing Directories"
    echo 
    echo "Você pode mudar de diretório em que você está trabalhando"
    echo "(atual) para outro diretório especificado no argumento"
    echo
    echo "-> caso não adicione nenhum argumento, você irá para o"
    echo "diretório 'home' do usuário"
    echo
    echo "É interessante observar que o comando 'cd' não gera nenhum"
    echo "tipo de confirmação mesmo que tenha sido bem sucedido."
    echo
    echo "Alias a maioria dos comandos não tem outputs desnecessarios"
    ./helpers.sh "repete" 2
    ./helpers.sh "enter"
    
}

comando_whoami (){
    clear
    echo "whoami - Who am I"
    echo 
    echo "Esse comando mostra seu identificação de usuário."
    echo "Que tal testar o comando?"
    ./helpers.sh "repete" 10
    ./helpers.sh "enter"
    ./helpers.sh "pergunta" "Digite o comando que mostra seu usuário" "whoami" "Tenta escrever: whoami"
    echo "output: "
    whoami    
    ./helpers.sh "repete" 14
    ./helpers.sh "enter"
}

comando_touch (){
    clear
    echo "touch - Cria um arquivo"
    echo 
    echo "O comando exige um argumento pelo menos, que será o nome"
    echo "do arquivo criado, uma vez que criado o arquivo vem vazio"
    echo "Se for adicionado mais argumentos esse será usado para criar"
    echo "mais arquivos"
    ./helpers.sh "repete" 9
    ./helpers.sh "enter"
    ./helpers.sh "pergunta" "Que tal criar um arquivo com o nome: 'teste123.txt'" "touch teste123.txt" "Tenta digitar touch e o nome do arquivo"
}

comando_date (){
    clear
    echo "date - Cria um arquivo"
    echo 
    echo "O comando exige um argumento pelo menos, que será o nome"
    echo "do arquivo criado, uma vez que criado o arquivo vem vazio"
    echo "Se for adicionado mais argumentos esse será usado para criar"
    echo "mais arquivos"
    ./helpers.sh "repete" 9
    ./helpers.sh "enter"
    ./helpers.sh "pergunta" "Que tal criar um arquivo com o nome: 'teste123.txt'" "touch teste123.txt" "Tenta digitar touch e o nome do arquivo"
}


# menu com os comandos em questão
comandos_menu (){
    clear
    nome=$(whoami)
    while [ true ]; do
        echo "COMANDOS BASICOS"
        echo "1. pwd"
        echo "2. ls"
        echo "3. cd"
        echo "4. whoami"
        echo "5. touch"
        echo "6. date"
        echo "7. cal"
        ./helpers.sh "repete" 6
        echo "Escolha qual comando você deseja aprender ou 'q' para sair"
        read line
        if [ "$line" = "1" ]; then
           comando_pwd
        fi
        if [ "$line" = "2" ]; then
            comando_ls
        fi
        if [ "$line" = "3" ]; then
            comando_cd
        fi
        if [ "$line" = "4" ]; then
            comando_whoami
        fi
        if [ "$line" = "5" ]; then
            comando_touch
        fi
        if [ "$line" = "6" ]; then
            echo "Opcao 6"
        fi
        if [ "$line" = "7" ]; then
            echo "Opcao 7"
        fi
        if [ "$line" = "q" ]; then
            exit 0
        fi
    done
}
comandos_menu