algoritmo "ExeMenu"

   var
     opcao:inteiro
     Nome: caracter
     Idade:inteiro


   inicio

      repita
          escreval("Menu de Opções")
          escreval("")
          escreval("1 - Cadastrar o Cliente")
          escreval("2 - Mostrar o Cliente")
          escreval("3 - Excluir o Cliente")
          escreval("0 - sair")
          leia(Opcao)
          
          escolha Opcao
            caso 0
               escreval("fui embora....")
            caso 1
               escreval("Informe o Nome: ")
               leia(Nome)
               escreval("Informe a Idade: ")
               leia(Idade)
            caso 2
                escreval("O nome: ",Nome," Idade: ",Idade)
            caso 3
               Nome <- ""
               Idade <- 0
            outrocaso
               escreval("Escolha a opção correta, caínágua...")

          fimescolha

      ate Opcao = 0


fimalgoritmo
