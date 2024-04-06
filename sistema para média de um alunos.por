programa
{
	//sistema para média de um alunos  
	//maior ou igual 7 está aprovado menor está reprovado
	//fundamental 1 soma duas notas e não reprova se a nota for >= 14,
	//fundamental 2 média >= 7 ,
	//médio soma >= 28,
	//A = fundamental 1 , B fundamenta 2, C = médio
	//Guardar media dos alunos num vetor 
	//Guardar o nome dos alunos
	//Guardar a sala do aluno
	//Validação para que usuário não digite um valor invalido
	//imprimir a nota do aluno
	//soma total das notas por aluno, em todos os níveis
	real b1 = 0.0, b2 = 0.0, b3 = 0.0, b4 = 0.0
	real media = 0.0, soma = 0.0
	cadeia nomes[3] 
	real   notas[3]
	inteiro int = 0, not = 0
	funcao inicio()
	{
         caracter nivel = 'A'
         cadeia   aluno = ""

	    escreva("Digite o nome do aluno\n")
         leia(aluno)
       
	    escreva("\nQual o nível de escolaridade\n")
	    escreva("A = fundamental 1 , B = fundamental 2, C = médio\n")
         leia(nivel)

         nomeAluno(aluno) 
         escolaridade(nivel)     
	}//fim inicio()
	
	funcao escolaridade(caracter n){
		 //fundamental 1
         se(n == 'A'){
            fundamental()
         	 //fundamental 2
         }senao se(n == 'B'){
         	//ensino médio
         	  fundamental2()
         }
         senao{
         	  medio()
         }	
	}

	funcao fundamental(){
		faca{
           	escreva("\nInsira a primeira nota\n")
               leia(b1)
           }
           enquanto(b1<0 ou b1>10)
           faca{
           	escreva("\nInsira a segunda nota\n")
         	 	leia(b2)
           }
           enquanto(b1<0 ou b1>10)
         	 soma = b1 + b2 
         	 se(soma >= 14){
         	 	escreva("Aprovado\n")
         	 	escreva("Sua nota é :"+soma)
         	 }senao{
         	 	escreva("Dependência\n")
         	 	escreva("Sua nota é :"+soma)
         	 }
         	notaAluno(soma)
	}
	funcao fundamental2(){
           media = somaBimestre()/4
        	 se(media >= 7){
         	 	escreva("Aluno está aprovado\n")
         	 	escreva("Sua nota é :"+media)
           }senao{
         	  	escreva("Aluno Dependência\n")	
         	  	escreva("Sua nota é :"+media)
          }
          notaAluno(media)  
     }
	funcao medio(){
           soma = somaBimestre()
           se(soma >=28){
           	escreva("Aluno aprovado\n")
           	escreva("Sua nota é :"+soma)
           }senao{
           	escreva("Aluno reprovado\n")
           	escreva("Sua nota é :"+soma)
           }
           notaAluno(soma) 
	}

	funcao real somaBimestre(){
		 faca{
           	escreva("\nInsira a primeira nota\n")
               leia(b1)
           }
           enquanto(b1<0 ou b1>10)
        	 faca{
           	escreva("\nInsira a segunda nota\n")
               leia(b2)
           }
           enquanto(b2<0 ou b2>10)
         	 faca{
           	escreva("\nInsira a terceira nota\n")
               leia(b3)
           }
           enquanto(b3<0 ou b3>10)
           faca{
           	escreva("\nInsira a quarta nota\n")
               leia(b4)
           }
           enquanto(b4<0 ou b4>10)
           real somaMedia = (b1+b2+b3+b4)
         retorne somaMedia
	}
  
     funcao nomeAluno(cadeia nome){
     	para(inteiro i = 0;i<=2;i++){
     		se(nomes[i] == "" e int == i){
     			nomes[i] = nome
     			
     		}	  
     	 }
        int++
     }

   funcao notaAluno(real nota){
   	para(inteiro n =0;n<=2;n++){
   		se(notas[n] == 0 e not == n){
   			notas[n] = nota
   	  }
   	}
   	not++
   }
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 595; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {nomes, 17, 8, 5};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */