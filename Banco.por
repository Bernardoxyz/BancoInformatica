programa {
  funcao inicio() {
   
 real saque
real deposito
real saldo
inteiro menu
cadeia controle
cadeia extrato = ""

saldo = 0

enquanto (menu != 0){
  escreva ("|------------- MENU -------------| \n")
    escreva ("\nSALDO - R$", saldo, "\n", "Escolha uma das op��es a seguir \n 1 - SAQUE \n 2 - DEP�SITO \n 3 - EXTRATO \n 0 - SAIR \n")
    escreva ("\n|--------------------------------|\n ESCOLHA: ")
    leia (menu)

    escolha(menu){
      escreva("Digite o valor para sacar:")
      leia (saque)
      enquanto (saque < 0) {
      escreva ("Valor digitado Inv�lido! Digite novamente :")
      leia (saque)
    }
}
se (saque <= saldo){
  saldo = saldo - saque
  escreva ("Saque realizado com sucesso!\n")
  escreva ("Aperte ENTER para continuar")
  leia (controle)
  limpa()
  extrato = extrato + "SAQUE ------- R$" + saque + "\n"
}
senao{
  escreva ("Saldo Insuficiente!\n")
  escreva ("Aperte ENTER para continuar")
  leia (controle)
  limpa()
}
pare

escreva ("Digite o valor para depositar: ")
leia (deposito)
enquanto (deposito < 0){
  escreva ("Valor digitado Inv�lido! Digite Novamente: ")
  leia (deposito)
}

saldo = saldo + deposito
extrato = extrato + "DEP�SITO ------- R$" + deposito + "\n"
escreva ("Dep�sito realizado com sucesso\n")
escreva ("Aperte ENTER para continuar")
leia (controle)
limpa()
pare

escreva (extrato)
escreva ("Aperte ENTER para continuar")
leia (controle)
limpa()
pare

escreva("Saindo do programa...")
pare

escreva("Op��o inv�lida! Tente novamente.\n")
  }
}
