#!/usr/bin/env bash
# ---------------------------------------------------------------------------- #
# Script Name:    sintaxe_shell.sh
# Description:    Script com múltiplas funcionalidades de interação
# Site:           git
# Written by:     Mateus Pereira
# Maintenance:    Mateus Pereira
# ---------------------------------------------------------------------------- #
# Usage:
#     $ ./sintaxe_shell.sh
# ---------------------------------------------------------------------------- #
# Tested on:
#     Bash 4.2.46
# ---------------------------------------------------------------------------- #
# History:
#     v1.0 15/04/2026, Mateus:
#     - implementação completa das atividades
# ---------------------------------------------------------------------------- #
# Thankfulness:
# ---------------------------------------------------------------------------- #

#VARIABLES

#FUNCTIONS

boas_vindas() {
    read -p "Digite seu nome: " nome
    read -p "Digite a disciplina: " disciplina
    read -p "Digite o semestre: " semestre

    echo "Olá, $nome! Bem-vindo à disciplina $disciplina no $semestre semestre."
    echo "Data e hora atual: $(date)"
    echo "Seu diretório home é: $HOME"
}

calcula_idade() {
    read -p "Nome: " nome
    read -p "Ano de nascimento: " ano

    ano_atual=$(date +%Y)
    idade=$((ano_atual - ano))

    echo "Nome: $nome"
    echo "Ano nascimento: $ano"
    echo "Idade aproximada: $idade anos"
}

gera_senha() {
    read -p "Palavra base: " palavra
    read -p "Número: " numero

    senha="${palavra}_${numero}"
    echo "Senha gerada: $senha"

    read -p "Deseja salvar em arquivo? (s/n): " op
    if [[ $op == "s" ]]; then
        echo "$senha" > senha.txt
        echo "Senha salva em senha.txt"
    fi
}

le_valores() {
    read -p "Digite valor 1: " v1
    read -p "Digite valor 2: " v2

    echo "Valor 1: $v1"
    echo "Valor 2: $v2"
}

ambiente() {
    echo "Usuário atual: $(whoami)"
    echo "Diretório home: $HOME"
    echo "Diretório atual: $(pwd)"
}

#CODE

echo "===== MENU ====="
echo "1 - Boas-vindas"
echo "2 - Calcular idade"
echo "3 - Gerar senha"
echo "4 - Ler valores"
echo "5 - Informações do sistema"
echo "0 - Sair"
read -p "Escolha uma opção: " opcao

case $opcao in
1) boas_vindas ;;
2) calcula_idade ;;
3) gera_senha ;;
4) le_valores ;;
5) ambiente ;;
0) echo "Saindo..." ;;
*) echo "Opção inválida" ;;
esac

#END ---------------------------------------------------------------------------- #
