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
    echo "ls - Lsiting Files"
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
    ./helpers.sh "repete" 6
    ./helpers.sh "enter"
    echo "ls -l"
    echo
    echo "O comando ls sozinho mostra os nomes dos arquivos somente"
    echo "porém se você quiser mais informação sobre cada um dos"
    echo "arquivos, você pode usar o comando 'ls -l'"
    echo
    echo "muito útil principalmente para informações de permissões,"
    echo "criação, etc..."
    ./helpers.sh "repete" 6
    ./helpers.sh "enter"
}

comandos_menu (){
    clear
    nome=$(whoami)
    while [ true ]; do
        echo "COMANDOS BASICOS"
        echo "1. pwd"
        echo "2. ls"
        echo "3. cd"
        echo "4. whoami"
        echo "5. who"
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
            echo "Opcao 3"
        fi
        if [ "$line" = "4" ]; then
            echo "Opcao 4"
        fi
        if [ "$line" = "5" ]; then
            echo "Opcao 5"
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