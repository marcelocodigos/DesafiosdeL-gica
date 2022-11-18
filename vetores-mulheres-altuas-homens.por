programa
{
	
	funcao inicio()
	{
	     //pede-se 50 más com 10 já da pra fazer 
	     //dex dados sobre sexo F para feminino e M para Masculino
		caracter sexo[10]={'m','m','m','m','m','f','f','f','f','f'}

		//Pede-se 50 alturas, más 10 é o suficiente para calcular o algoritmo
		//dez alturas
		real altura[10]={1.40,1.40,1.40,1.40,1.80,1.65,1.56,1.85,1.35,1.55}

		//a maior e menor altura do grupo
		real maiorAltura=0.0
		real menorAltura=900.0 //inicializa a variavel menor altura com
		//um valor de altura impossivel de ter. 


		//algoritmo que que testa os maiores e menores valores das altuas
		para(inteiro i=0; i<10; i++){
			
			se(maiorAltura<altura[i]){ //se for verdadeiro
				maiorAltura=altura[i] //sobscreve o valor por um maior que o antecessor
			}
			se(menorAltura>altura[i])
			{
				menorAltura=altura[i] //sobscreve o valor por um menor que o antecessor
			}
			
		}
		escreva("\n\n Maior Altura: "+maiorAltura)
		escreva("\n Menor Altura: "+menorAltura)

		//A média das alturas das mulheres
		real alturaMulheres=0.0,mediaALturaMulheres=0.0
		inteiro qtdAlturasMulheres=0
		para(inteiro m=0; m<10; m++)
		{
			se(sexo[m]=='f'){

				//Soma os dados do vetor altura, de acordo com o teste
				//condicional 'F' de feminino
				alturaMulheres=alturaMulheres+altura[m]
                    qtdAlturasMulheres++
				
				
			}
			
		}
		
		//preciso somar um al valor total de mulheres para que o calculo
		//de media der certo já que o array começa contar do zero. 
		//qtdAlturasMulheres=qtdAlturasMulheres+1
		escreva("\n"+qtdAlturasMulheres)
		escreva("\n")
		escreva("\n"+alturaMulheres)

		//faço o calculo de média bem simples, essas variaveis já 
		//foram declaradas antes do SE() e do Para()
		mediaALturaMulheres=(alturaMulheres/qtdAlturasMulheres)

		//média das altuas das mulheres
		escreva("\nMédia Altura Mulheres (Média) "+mediaALturaMulheres)



		//retornar o numero de homens de acordo com o vetor sexo = M (homen)
		//Masculino
		/**/
		real numeroHomens=0.0,numeroMulheres=0.0
		para(inteiro j=0; j<10; j++){ //percorrendo o vetor Sexo
			se(sexo[j]=='m') //se for m de masculino some mais 1
			{
				numeroHomens=numeroHomens+1
			}senao{
				numeroMulheres++
			}
		}
		escreva("\n\nQuantidade de Homens..:"+numeroHomens)
		escreva("\nQuantidade de Mulheres:"+numeroMulheres)

		//calculando a porcentagem de homens e mulheres
		real percentHomens=0.0,percentMulheres=0.0,totalDados=0.0
		totalDados=numeroHomens+numeroMulheres //10 ou seja 4+6 =10
		//percent em homens 
		percentHomens=(numeroHomens/10)*100 //40% 40
		//percent em homens 
		percentMulheres=(numeroMulheres/10)*100 //60% 60

		escreva("\n\nPercentutal de Mulheres e Homens")
		escreva("\nTemos "+percentMulheres+"% de Mulheres")
		escreva("\nTemos "+percentHomens+"% de Homens")
		
		
		
	}
}
