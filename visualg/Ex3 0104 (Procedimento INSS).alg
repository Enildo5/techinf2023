algoritmo "Ex3 0104 (Procedimento INSS)"

//05 - Fazer uma matriz 10x10 com desconto de inss, no final mostrar.

      // Tabela para Empregado
      //Salário de Contribuição (R$)	Alíquota (%)	Parcela a Deduzir
      //até R$ 1.412,00	               7,5 %	                 –
      //de R$ 1.412,01 até R$ 2.666,68	9,0 %	                 21,18
     //de R$ 2.666,69 até R$ 4.000,03	12,0 %	              101,18
     //de R$ 4.000,04 até R$ 7.786,02	14,0 %	              181,18

   procedimento Preencher
   
      var
      
         SalBruto: real
         DescInss:real
         Lim1,Lim2,Lim3,Lim4,UltLim:real
         Tx1,Tx2,Tx3,Tx4:real
         Ded1,Ded2,Ded3:real

      inicio
      
         Lim1<- 1412
         Lim2<- 2666.68
         Lim3<- 4000.03
         Lim4<- 7786.02
         UltLim<- 1090.04
         Tx1<- 0.095
         Tx2<- 0.11
         Tx3<- 0.14
         Tx4<- 0.20
         Ded1<- 21.18
         Ded2<- 108.18
         Ded3<- 181.18


         escreva("Informe o Salário Bruto: ")
         leia(SalBruto)

            se SalBruto <= Lim1 entao
               DescInss <- SalBruto * Tx1
               senao
                    se SalBruto <=  Lim2 entao
                       DescInss <- SalBruto * Tx2 - Ded1
                       senao
                            se SalBruto <= Lim3 entao
                                DescInss <- SalBruto * Tx3 - Ded2
                                senao
                                     se SalBruto <= Lim4 entao
                                        DescInss <- SalBruto * Tx4 - Ded3
                                        senao
                                           DescInss <- UltLim
                                     fimse
                            fimse
                    fimse
            fimse


            Mostrar(SalBruto,DescInss)
   
   fimprocedimento
   
   procedimento Mostrar(SalBruto,DescInss:real)

      var
      
      inicio
      
        escreval("O desconto do Salário: R$ ",SalBruto:3:2," é: R$ ",DescInss:3:2)
        
   fimprocedimento
    
   var

   inicio

       Preencher



fimalgoritmo
