programa {
  funcao inicio() {
    inteiro par
    inteiro soma=0
    escreva("digite um n�mero:","\n")
    leia(par)
  enquanto(par >= 1){
    se(par % 2 == 0){
      escreva("esse n�mero � par : ",par,"\n")
       soma=soma+par
      }
par=par-1
  }
  escreva("soma dos n�mero �:",soma)
     }
}
