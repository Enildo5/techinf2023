Algoritmo "VerificaPalindromoinvertendo"
    Var
        numero, inverso: inteiro
    Inicio
        Escreva("Digite um número de 5 dígitos: ")
        Leia(numero)

        inverso <- (numero MOD 10) * 10000 + ((numero DIV 10) MOD 10) * 1000 + ((numero DIV 100) MOD 10) * 100 +((numero DIV 1000) MOD 10) * 10 + (numero DIV 10000)

        Se numero = inverso Entao
            Escreva("O número é um palíndromo.")
        Senao
            Escreva("O número não é um palíndromo.")
        FimSe
    Fimalgoritmo

