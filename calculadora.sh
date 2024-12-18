#!/bin/bash

# Função principal
while true; do
    echo "Bem-vindo à calculadora!"
    echo "Digite dois números:"
    read -p "Primeiro número: " num1
    read -p "Segundo número: " num2

    echo -e "\nEscolha uma operação:"
    echo "1 - Adição (+)"
    echo "2 - Subtração (-)"
    echo "3 - Multiplicação (*)"
    echo "4 - Divisão (/)"
    echo "5 - Sair"
    read -p "Digite o número da operação desejada: " escolha

    case $escolha in
        1)
            echo "Resultado: $(echo "$num1 + $num2" | bc)"
            ;;
        2)
            echo "Resultado: $(echo "$num1 - $num2" | bc)"
            ;;
        3)
            echo "Resultado: $(echo "$num1 * $num2" | bc)"
            ;;
        4)
            if [ "$num2" -ne 0 ]; then
                echo "Resultado: $(echo "scale=2; $num1 / $num2" | bc)"
            else
                echo "Erro: divisão por zero não permitida."
            fi
            ;;
        5)
            echo "Saindo da calculadora. Obrigado!"
            break
            ;;
        *)
            echo "Opção inválida! Tente novamente."
            ;;
    esac
    echo -e "\n"
done

