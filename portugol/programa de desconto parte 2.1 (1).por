programa {
  funcao inicio() {
    
   
  /*programa de desconto*/
    real presso=0,desconto=0

    escreva("digite o valor de produto\n")
    leia(presso)

    se(presso >=100){
      desconto=presso-(presso * 10)/100
     escreva("presso � maoir ou igual a 100 aplique um desconto de 10%",desconto)
    } 
   senao se(presso<100 e presso >= 50){
    presso=presso-(presso*5)/100
     escreva("voc� recebeu um desconto de 5% o valor ficou",presso) 
    }
    senao{
      escreva("voc� n�o tem dereito a desconto")
    }


  
  }
}
