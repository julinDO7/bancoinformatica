programa {
inclua biblioteca Util --> u
	
  funcao inicio() {
    real saldo = 0
    real saque, deposito
    cadeia controle
    inteiro menu = 1
    cadeia extrato = ""
    cadeia senha = "2024M"
    cadeia senhaD = "", nome = ""
    

    enquanto(menu != 0){
	 enquanto(senhaD != senha){
	 	escreva("|		Login\n")
	 	escreva("|	Nome: ")
	 	leia(nome)
	 	escreva("|	Senha: ")
	 	leia(senhaD)
	 	se(senhaD != senha){
	 		limpa()
	 		escreva("|		Erro\n")
	 		escreva("\n|	Aguarde e tente novamente.")
	 		u.aguarde(2000)
	 	}
	 limpa()
	 }
    	
      escreva("|----------MENU----------|\n")
      escreva("| 1-SALDO  R$", saldo, "           |\n")
      escreva("| 2-SAQUE                |\n")
      escreva("| 3-DEPOSITO             |\n")
      escreva("| 4-EXTRATO              |\n")
      escreva("| 0-SAIR                 |\n")
      escreva("|------------------------|\n")
      escreva("| ESCOLHA -> ")
      leia(menu)
      limpa()

    
      escolha(menu){
        caso 1:
        escreva("Saldo = ", saldo, "\n")
        pare
        caso 2:
        escreva("Digite sua senha:")
        leia(senhaD)
        se(senhaD == senha){
        escreva("Digite o valor para sacar: ")
        leia(saque)
        enquanto(saque < 0){
          escreva("Valor invalido digite novamente: ")
          leia(saque)
          
        }
        se(saque > saldo){
          escreva("Não autorizado!\n")
          escreva("Aperte ENTER para continuar")
          leia(controle)
          limpa()
        }
        senao{
          saldo = saldo - saque
          extrato = extrato + "SAQUE ------------ R$" + saque + "\n"
          escreva("Saque realizado com sucesso!\n")
          escreva("Aperte ENTER para continuar")
          leia(controle)
          limpa()
        }
        }
        senao
        escreva("Senha inválida\n")
        pare
        caso 3:
        escreva("Digite sua senha:")
        leia(senhaD)
        se(senhaD == senha){
        escreva("Digite o valor para depositar: ")
        leia(deposito)
        enquanto(deposito<0){
          escreva("Valor invalido digite novamente: ")
          leia(deposito)
        }
        saldo = saldo + deposito
        extrato = extrato + "DEPOSITO ------------ R$" + deposito + "\n"
        escreva("Deposito realizado com sucesso!\n")
        escreva("Aperte ENTER para continuar")
          leia(controle)
          limpa()
        }
        senao
        escreva("Senha invalida\n")
        pare
        caso 4:
        escreva("Digite sua senha:")
        leia(senhaD)
        se(senhaD == senha){
        escreva(extrato)
         escreva("Aperte ENTER para continuar")
          leia(controle)
          limpa()
        pare
        }
        senao
        escreva("Senha inválida\n")
      }
    }
  }
}

    
  }
}
