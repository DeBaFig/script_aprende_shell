#!/bin/bash
####################################
#
# Explicação sobre CLI GUI e comandos
# versão 1.0 - Denize B Figueiredo
# 
####################################

introducao_menu (){
    clear
    echo "INTRODUÇÃO A CLI"
    echo
    echo
    echo "Todos os computadores precisam de um sistema operacional "
    echo "para controlar o hardware, fazer tarefas e principalmente "
    echo "permitir que nós usuarios façamos interações com o sistema"
    echo
    echo "Um dos métodos de se comunicar com o sistema operacional"
    echo "(vamos abreviar de SO), é via 'shell prompt' que é uma "
    echo "interface que usa linha de comando (CLI), outros exemplos "
    echo "de interação com SO são programas como Bloco de Notas e "
    echo "Calculadora, porém esses usam Interface grafica (GUI)."
    echo
    echo "Quando a interface do shell está ativa, o terminal aguarda"
    echo "o comando e <ENTER> para executar o mesmo."
    echo "Agora vamos ver um pouco mais sobre GUI vs CLI"
    ./helpers.sh "enter"
    echo "GUI vs CLI"
    echo
    echo "Para executar uma operação no sistema CLI, é necessário "
    echo "escrever um comando. Por outro lado, os usuários de GUI "
    echo "forneceram os recursos visuais (gráficos) que incluem  "
    echo "imagens e ícones, facilitando os usuários a executar uma"
    echo "tarefa diretamente."
    ./helpers.sh "repete" 8
    ./helpers.sh "enter"
    ./helpers.sh "repete" 58 "-"
    echo "| Base para | CLI                 | GUI                  |"
    echo "|comparação |                     |                      |"
    ./helpers.sh "repete" 58 "-"
    echo "|  Basic    |A interface de linha |A interface gráfica do|"
    echo "|           |de comando permite   |usuário permite que o |"
    echo "|           |que um usuário se    |usuário interaja com  |"
    echo "|           |comunique com o      |o sistema usando      |"
    echo "|           |sistema por meio de  |gráficos que incluem  |"
    echo "|           |comandos.            |imagens, ícones etc.  |"
    ./helpers.sh "repete" 58 "-"
    echo "|Dispositivo|Teclado              | Mouse e teclado      |"
    echo "|usado      |                     |                      |"
    ./helpers.sh "repete" 58 "-"
    ./helpers.sh "repete" 2
    ./helpers.sh "enter"
    ./helpers.sh "repete" 62 "-"
    echo "| Base para     | CLI                   | GUI                  |"
    echo "|comparação     |                       |                      |"
    ./helpers.sh "repete" 62 "-"
    echo "|Facilidade     |Difícil de realizar    |Fácil de executar     |"
    echo "|de executar    |uma operação e requer  |tarefas e não requer  |"
    echo "|tarefas        |experiência.           |experiência.          |"
    ./helpers.sh "repete" 62 "-"
    echo "|Precisão       |Alto                   |Baixo                 |"
    ./helpers.sh "repete" 62 "-"
    echo "|Flexibilidade  |Intransigente          |Mais flexível         |"
    ./helpers.sh "repete" 62 "-"
    echo "|Consumo de     |Baixo                  |Alto                  |"
    echo "|memória        |                       |                      |"
    ./helpers.sh "repete" 62 "-"
    echo
    ./helpers.sh "enter"
    ./helpers.sh "repete" 62 "-"
    echo "| Base para     | CLI                   | GUI                  |"
    echo "|comparação     |                       |                      |"
    ./helpers.sh "repete" 62 "-"
    echo "|Consumo de     |Baixo                  |Alto                  |"
    echo "|memória        |                       |                      |"
    ./helpers.sh "repete" 62 "-"
    echo "|Aparência      |Não pode ser alterado  |Alterações            |"
    echo "|               |                       |personalizadas podem  |"
    echo "|               |                       |ser empregadas        |"
    ./helpers.sh "repete" 62 "-"
    echo "|Integração e   |Âmbito de possíveis    |Delimitado            |"
    echo "|extensibilidade|melhorias              |                      |"
    ./helpers.sh "repete" 62 "-"
    ./helpers.sh "repete" 2
    ./helpers.sh "enter"
    echo "COMANDOS"
    echo
    echo "Os comandos linux geralmente são escritos em caixa baixa,"
    echo "e são case sensitive, digitar 'cd' é diferente de 'CD'."
    echo "A estrutura de um comando é composto geralmente por 3 partes:"
    echo
    echo " 1- O comando(ls,cd,pwd, etc)"
    echo " 2- A opção acompanhada de um hifen(-a,-p, etc)  "
    echo " 3- O argumento(pode ser um caminho, um texto uma opção)"
    echo
    echo "Exemplo: 'ls' é o comando que mostra uma lista dos nomes"
    echo "dos arquivos na pasta atual."
    echo "Porém se você digitar 'ls -l' você vai ver uma lista"
    echo "detalhada dos arquivos na pasta atual."
    echo
    echo
    ./helpers.sh "enter"
    echo "Outro exemplo pode ser 'ls -l /bin' , esse comando"
    echo "mostraria em detalhes uma lista dos arquivos na pasta /bin"
    echo
    echo "No Linux SO tem mais de 2500 comandos e se você precisar"
    echo "alguma informação como opções de algum comando você pode"
    echo "digitar o comando 'man' e como argumento o comando que"
    echo "você deseja saber mais informações"
    echo
    echo "Exemplo: 'man ls' que tal digitar esse comando e navegar"
    echo "nas opções do ls?"
    echo
    echo "Quando você terminar acesse o menu de comandos para "
    echo "aprender mais :) "
    ./helpers.sh "repete" 2
    ./helpers.sh "enter"
    ./helpers.sh "pergunta" "Digite o comando que você pode ver o manual do ls" "man ls" "Tenta escrever: man ls"
    man ls
    clear
    echo "Agora podemos começar a ver alguns comandos."
    
}

introducao_menu
clear