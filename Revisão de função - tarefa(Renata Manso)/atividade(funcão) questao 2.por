programa 
{
    
    inclua biblioteca Util
    real valor_at, valor_ant
    
	funcao inicio() 
	{
	    
	       escreva("Insira valores referente ao produto para saber qual o porcentual de acrescimo: \n")
	       escreva("\nEscreva o valor antigo do produto: ")
            leia(valor_ant)
            escreva("Escreva o novo valor do produto: ")
            leia(valor_at)
         
            
                limpa()
                escreva("\nO acrescimo, em porcentagem, dado ao produto em relação ao seu novo valor é: ", valor(valor_at, valor_ant),"%")
                Util.aguarde(4000)
            
		
	}
	
funcao real valor(real atual, real antigo)
{
    real acrescimo
    
    acrescimo = ((atual-antigo) / antigo)*100
    
    retorne acrescimo
}

	
}

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 554; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */