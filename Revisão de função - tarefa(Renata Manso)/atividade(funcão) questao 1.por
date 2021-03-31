programa 
{
    
    inclua biblioteca Util
    real nota1, nota2, nota3
    inteiro qtd, i
    caracter opcao='s'
    
	funcao inicio() 
	{
	    
		escreva("Insira quantas nota de alunos deseja ser calculado: ")
	    leia(qtd)
	   
	   para(i=1;i<=qtd;i++)
	   {
	        limpa()
	        escreva("Insira informaçoes para calcular media do aluno: \n")
	        escreva("\nEscreva primeira nota do ",i,"º aluno: ")
            leia(nota1)
            escreva("Escreva segunda nota do ",i,"º aluno: ")
            leia(nota2)
            escreva("Escreva terceira nota do ",i,"º aluno: ")
            leia(nota3)
	    
	  
	        escreva("\nInsira uma opção para media desejada para o ",i,"º aluno\n")
            escreva("A. Media Aritmedica\n")
            escreva("P. Media Ponderada\n")
            escreva("Opção desejada por favor, em maiusculo: ")
            leia(opcao)
            
            se(opcao=='A' ou opcao=='a')
            {
                limpa()
                escreva("\nO resultado da media aritmedica do ",i,"º aluno é: ", media_aritm (nota1, nota2, nota3))
                Util.aguarde(4000)
            }
            se(opcao=='P' ou opcao=='p')
            {
               limpa()
               escreva("\nO resultado da media ponderada do ",i,"º aluno é: ", media_ponde (nota1, nota2, nota3))
               Util.aguarde(4000)
            }
	        se((opcao!='A' ou opcao!='a') e (opcao!='P' ou opcao!='p'))
	        {
	            limpa()
	            escreva("\nErro, opção inserida incorretamente.")
	            Util.aguarde(4000)
	        }
	   }
		
	}
	
funcao real media_aritm(real n1, real n2, real n3)
{
    real media_arit
    
    media_arit = (n1+n2+n3) / 3
    
    retorne media_arit
}

funcao real media_ponde(real n1, real n2, real n3)
{
    real media_pond
    
    media_pond = (n1*5+n2*3+n3*2) / 10
    
    retorne media_pond
}
	
}

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1890; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */