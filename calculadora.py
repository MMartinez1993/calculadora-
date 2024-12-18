# calculadora- 
def calculadora():
    while True:
        try:
            num1 = float(input("Digite o primeiro número: "))
            num2 = float(input("Digite o segundo número: "))
        except ValueError:
            print("Por favor, insira valores numéricos.")
            continue

        print("\nEscolha a operação:")
        print("1 - Adição (+)")
        print("2 - Subtração (-)")
        print("3 - Multiplicação (*)")
        print("4 - Divisão (/)")
        print("5 - Sair")
        
        escolha = input("Digite o número da operação desejada: ")

        if escolha == '1':
            print(f"O resultado de {num1} + {num2} é {num1 + num2}\n")
        elif escolha == '2':
            print(f"O resultado de {num1} - {num2} é {num1 - num2}\n")
        elif escolha == '3':
            print(f"O resultado de {num1} * {num2} é {num1 * num2}\n")
        elif escolha == '4':
            if num2 != 0:
                print(f"O resultado de {num1} / {num2} é {num1 / num2}\n")
            else:
                print("Erro: Divisão por zero não é permitida.\n")
        elif escolha == '5':
            print("Saindo da calculadora. Obrigado!")
            break
        else:
            print("Opção inválida! Tente novamente.\n")

calculadora()
