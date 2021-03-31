programa 
{
    
    inclua biblioteca Util
    inteiro valor
    
	funcao inicio() 
	{
	    
	        escreva("Insira um valor em segundo para ser lido em horas, minutos e segundos \n")
	        escreva("\nInsira qualquer valor inteiro: ")
            leia(valor)
            
                limpa()
                escreva("\nO tempo que responde o valor inserido em segundo em tempo, hora, minuto, segundo, é: ",tempoH(valor),"h",tempoM(valor),":",tempoS(valor))
                Util.aguarde(4000)
            
	}
	
funcao inteiro tempoH(inteiro segundos)
{
    inteiro hora
    
    hora = segundos / 3600
    
    retorne hora
}

funcao inteiro tempoM(inteiro segundos)
{
    inteiro minuto
    
	minuto= segundos / 60 
	minuto = minuto % 60

    retorne minuto
}

funcao inteiro tempoS(inteiro segundos)
{
    
    inteiro segundo 
    
    segundo  = segundos % 60
    
    retorne segundo 
}
	
}

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 213; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */