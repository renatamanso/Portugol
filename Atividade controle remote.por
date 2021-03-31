programa {

     inclua biblioteca Util
     inteiro memorizar = 0
	inteiro numCanais[10] 
	cadeia nomeCanais[10] 
	inteiro canal_atual = 0 
	inteiro canal_anterior = 0
	inteiro volume_atual = 0 
	inteiro volume_anterior = 0
	
	funcao inicio() {
	    cria_canais()
	    menu()
		
	}
	
    funcao cria_canais() {
	    numCanais[0] = 0
	    nomeCanais[0]= "sem sinal"
	    numCanais[1] = 10
	    nomeCanais[1]= "Globo"
	    numCanais[2] = 12
	    nomeCanais[2]= "SBT"
	    numCanais[3] = 8
	    nomeCanais[3]= "Record"
	    numCanais[4] = 6
	    nomeCanais[4]= "Rede TV"
	    numCanais[5] = 4
	    nomeCanais[5]= "Bandeirante"
	    numCanais[6] = 2
	    nomeCanais[6]= "TV Cultura"
	    numCanais[7] = 0
	    nomeCanais[7]= "sem sinal"
	    
	    
	}
 	
	
	
	
	funcao menu() {
	    
	   inteiro acao = 7
	    
	   enquanto(acao !=0)
        {
         limpa()
         escreva("Controle das Seguintes ações\n\n")
         escreva("0. Encerrar programa\n")
	    escreva("1. Ligar\n")
	    escreva("2. Desligar\n")
	    escreva("3. Proximo canal\n")
	    escreva("4. Canal anterior\n")
	    escreva("5. Aumentar volume\n")
	    escreva("6. Reduzir volume\n")
	    escreva("Ação desejada: ")
	    leia(acao)
	    
	    se (acao==1) {
	        liga()
	        
	    }
	    se (acao==2) {
	        desliga()
	        
	    }
	    se (acao==3) {
	        canalSeguinte()
	        
	    }
	    se (acao==4) {
	        canalAnterior()
	        
	    }
	    se (acao==5) {
	        aumentarVolume()
	        
	    }
	    se (acao==6) {
	        reduzirVolume()
	        
	    }
	       
        }
	}

     funcao liga() {
     	limpa()
     	se(memorizar == 0){
     		memorizar = memorizar + 1
     		escreva("\nTV ligada! Aproveite!!!\n")
     	}senao{
     		escreva("\nA TV já está ligada! Tente outra opção.") 
     	}
     	Util.aguarde(5000)
     }

     funcao desliga() {
     	limpa()
     	se(memorizar == 1){
     	    memorizar = memorizar - 1	
     	    escreva("\nObrigado por usar a TV!!!\n") 	
     	}senao{
     	    escreva("\nA TV já está desligada! Tente outra opção.") 
     	}
     	Util.aguarde(5000)
     }
	
	funcao canalSeguinte() {
	    limpa()
	    
	    se(canal_atual==5) {
	        escreva("\nEste canal é o último da sequencia: \n\n", numCanais[6], " - ", nomeCanais[6])
	        Util.aguarde(5000)

	    }
	    senao {
	        canal_atual = canal_atual +1
	        escreva("\nCanal alterado: ", numCanais[canal_atual], " - ", nomeCanais[canal_atual])
	        escreva("\nCanal anterior: ", numCanais[canal_atual -1], " - ", nomeCanais[canal_atual -1])
	        escreva("\nCanal seguinte: ", numCanais[canal_atual +1], " - ", nomeCanais[canal_atual +1])
	        canal_anterior = canal_atual
	        Util.aguarde(5000)
	    }
	   
	}
    funcao canalAnterior() {
	    limpa() 	
	    se(canal_anterior<=1) {
	        escreva("\nEste canal é o primeiro da sequencia: \n\n",numCanais[1], " - ", nomeCanais[1])
	        Util.aguarde(5000)

	    }
	    senao {
	        canal_anterior = canal_anterior -1
	        escreva("\nCanal alterado: ", numCanais[canal_anterior], " - ", nomeCanais[canal_anterior])
	        escreva("\nCanal anterior: ", numCanais[canal_anterior -1], " - ", nomeCanais[canal_anterior -1])
	        escreva("\nCanal seguinte: ", numCanais[canal_anterior +1], " - ", nomeCanais[canal_anterior +1])
	        canal_atual = canal_anterior
	        Util.aguarde(5000)
	    }
	} 

	funcao aumentarVolume() {
		limpa()
		se(volume_atual ==50){
		     escreva("\nVolume máximo. Não é possível ampliar o volume!")
		     Util.aguarde(5000)
		}senao{
			volume_atual = volume_atual +1
			escreva("\nVolume atual é: ",volume_atual)
			volume_anterior = volume_atual
			Util.aguarde(5000)
		}
	}

	funcao reduzirVolume() {
		limpa()
		volume_anterior = volume_atual
		se(volume_anterior ==0){
		     escreva("\nVolume mínimo. Não é possível diminuir o volume!")
		     Util.aguarde(5000)
		}
		senao{
			volume_anterior = volume_anterior - 1
			escreva("\nVolume atual é: ",volume_anterior)
			volume_atual = volume_anterior
			Util.aguarde(5000)
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 3662; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */