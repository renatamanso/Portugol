programa 
{
    inclua biblioteca Util
    cadeia l,s
	inteiro opcao
	inteiro mascara_estoque, alcool_estoque, vacina_estoque
	inteiro compra_mas, compra_alc, compra_vac
	inteiro venda_mas, venda_alc, venda_vac
	real valor_compra_mas, valor_compra_alc, valor_compra_vac
	real valor_venda_mas, valor_venda_alc, valor_venda_vac
	real lucro_mas, lucro_alc, lucro_vac
	real porc_mas, porc_alc, porc_vac
	real lucro
	
	
	funcao inicio() 
	{
    	mascara_estoque=0
    	alcool_estoque=0
    	vacina_estoque=0
	    login()
		
	}
    
    
    funcao login()
    {
        limpa()
        escreva("SISTEMA FARMARCIA\n")
        escreva("\nInsira o login e a senha para acesso a sessão \n")
		escreva("\nLogin: ")
		leia(l)
		escreva("senha: ")
		leia(s)
		
		se(l == "admin" e s == "123456"){
		    menu_principal()
		}
		senao{
		    
		    opcao=0
            enquanto(opcao!=2){
		    
		   escreva("\nLogin ou Senha não cadastrados no sistema.\n")
		   escreva("1. Para Tentar Novamente\n")
		   escreva("2. Encerrar sessão\n")
           escreva("Informe qual opção deseja: \n")
           leia(opcao)
           
            se(opcao==1)
            {
                login()
            }
          }    
        }
    }

    funcao menu_principal()
    {
        opcao=0
        enquanto(opcao!=6)
        {
            limpa()
            escreva("Controle dos Seguintes Produtos\n\n")
            escreva("1 Máscara\n")
            escreva("2 Álcool em gel\n")
            escreva("3 Vacina da Covid-19\n")
            escreva("4 Mostrar estoque atual de todos os produtos\n")
            escreva("5 Mostrar Lucro das vendas\n")
            escreva("6 Finalizar o programa\n")
            escreva("Informe o produto ou a informaçao que deseja obter : ")
            leia(opcao)
            
            se(opcao==1)
            {
                menu_mascara()
            }
            se(opcao==2)
            {
                menu_alcool()
            }
            se(opcao==3)
            {
                menu_vacina()
            }
            se(opcao==4)
            {
                mostrar_estoque()
            }
            se(opcao==5)
            {
                mostrar_lucro()
            }
            
        }
    }
    
    funcao mostrar_estoque()
    {
        limpa()
        escreva("Estoque de Produtos \n\n")
        escreva("\nEstoque atual de mascaras     : ", mascara_estoque)
        escreva("\nEstoque atual de alcool em gel: ", alcool_estoque)
        escreva("\nEstoque atual de vacinas      : ", vacina_estoque)
        Util.aguarde(3000)
    }
    

    funcao menu_mascara()
    {
        opcao = 0
        enquanto(opcao != 5)
        { 
            limpa()
            escreva("Submenu - Gestão de Máscaras\n")
            escreva("1 Registrar compra de máscaras\n")
            escreva("2 Registrar venda de máscara\n")
            escreva("3 Mostrar estoque atual de máscara\n")
            escreva("4 Zerar estoque de máscara\n")
            escreva("5 Voltar ao menu principal\n")
            escreva("Informe a opcao desejada:  ")
            leia(opcao)
            se(opcao==1)
            {
                mascara_entrada()  
            }
            se(opcao==2)
            {
                mascara_saida()
            }
            se(opcao==3)
            {
                mascara_mostrar_estoque()
            }
            se(opcao==4)
            {
                mascara_zerar_estoque()
            }
            se(opcao==5)
            {
                menu_principal()
            }
        }
    }
    
    funcao mascara_entrada() 
    {
        limpa()
        escreva("\nAtualizar o estoque de mascaras\n")
        escreva("\nInsira o numero de novas mascaras compradas: ")
        leia(compra_mas)
        
        se(compra_mas >= 1){
            mascara_estoque = mascara_estoque + compra_mas
            valor_compra_mas = compra_mas * 12.00
            escreva("\nNumero de mascaras atual: ",mascara_estoque)
            escreva("\nCom cada mascara sendo comprada a R$12.00, o valor da compra foi: ",valor_compra_mas)
            Util.aguarde(3000)
        }senao{
            opcao=0
            enquanto(opcao!=2){
		    
		   escreva("\nNenmhum numero da compra de mascara foi adicionado\n")
		   escreva("1. Quer Tentar Novamente\n")
		   escreva("2. Encerrar sessão\n")
           escreva("Informe qual opção deseja: \n")
           leia(opcao)
           
            se(opcao==1)
            {
                mascara_entrada() 
            }
          }    
        }
    }
    
    funcao mascara_saida()
    {
        limpa()
        escreva("\nAtualizar o estoque de mascaras\n")
        escreva("\nInsira o numero de mascaras vendidas: ")
        leia(venda_mas)
        
        se(venda_mas >= 1){
            mascara_estoque = mascara_estoque - venda_mas
            valor_venda_mas = venda_mas * 18.90
            porc_mas = venda_mas * 12.00
            lucro_mas = ((valor_venda_mas - porc_mas)/ porc_mas) *100 
            escreva("\nNumero de mascaras atual: ",mascara_estoque)
            escreva("\nCom cada mascara sendo vendida a R$18.90, o valor da venda ao cliente foi: ",valor_venda_mas)
            escreva("\nLucro da farmacia, em porcentagem,da venda ao cliente é: ", lucro_mas,"%")
            Util.aguarde(3000)
        }senao{
            opcao=0
            enquanto(opcao!=2){
		    
		   escreva("\nNenmhum numero de venda de mascara foi adicionado\n")
		   escreva("1. Quer Tentar Novamente\n")
		   escreva("2. Encerrar sessão\n")
           escreva("Informe qual opção deseja: \n")
           leia(opcao)
           
            se(opcao==1)
            {
                mascara_saida() 
            }
          }    
        }
    }
    
    funcao mascara_mostrar_estoque()
    {
        limpa()
        se(mascara_estoque >= 1){
        mascara_estoque = mascara_estoque + 0    
        escreva("\nEstoque atual de mascara: ",mascara_estoque)
        Util.aguarde(3000)
        }senao{
            escreva("\nNão há mascara no estoque.\n")
            Util.aguarde(3000)
        }
    }
    funcao mascara_zerar_estoque()
    {
        limpa()
        se(mascara_estoque >= 1){
        mascara_estoque = mascara_estoque - mascara_estoque    
        escreva("\nEstoque de mascara zerado= ",mascara_estoque)
        Util.aguarde(3000)
        }senao{
            escreva("\nNão há mascara no estoque.\n")
            Util.aguarde(3000)
        }
    }
    
    
    
    
    //Alcool
    funcao menu_alcool()
    {
        opcao=0
        enquanto(opcao!=5)
        {
            limpa()
            escreva("Submenu - Gestão álcool em gel\n\n")
            escreva("1 Registrar compra de álcool em gel\n")
            escreva("2 Registrar venda de álcool em gel\n")
            escreva("3 Mostrar estoque atual de álcool em gel\n")
            escreva("4 Zerar estoque de álcool em gel\n")
            escreva("5 Voltar ao menu anterior\n")
            escreva("Informe a opcao desejada:  ")
            leia(opcao)
                se(opcao==1)
            {
                alcool_entrada()
            }
            se(opcao==2)
            {
                alcool_saida()
            }
            se(opcao==3)
            {
                alcool_mostrar_estoque()
            }
            se(opcao==4)
            {
                alcool_zerar_estoque()
            }
            se(opcao==5)
            {
                menu_principal()
            }
        }
    }
    
    funcao alcool_entrada()
    {
        limpa()
        escreva("\nAtualizar o estoque de alcool em gel\n")
        escreva("\nInsira o numero de novos alcool em gel comprados: ")
        leia(compra_alc)
        
        se(compra_alc >= 1){
            alcool_estoque = alcool_estoque + compra_alc
            valor_compra_alc = compra_alc * 8.00
            escreva("\nNumero de alcool em gel atual: ",alcool_estoque)
            escreva("\nCom cada alcool em gel sendo comprada a R$8.00, o valor da compra foi:",valor_compra_alc)
            Util.aguarde(3000)
        }senao{
            opcao=0
            enquanto(opcao!=2){
		    
		   escreva("\nNenmhum numero da compra de alcool em gel adicionado\n")
		   escreva("1. Quer Tentar Novamente\n")
		   escreva("2. Encerrar sessão\n")
           escreva("Informe qual opção deseja: \n")
           leia(opcao)
           
            se(opcao==1)
            {
                alcool_entrada() 
            }
          }    
        }
    }
    
    funcao alcool_saida()
    {
        limpa()
        escreva("\nAtualizar o estoque de alcool em gel\n")
        escreva("\nInsira o numero de alcool em gel vendidas: ")
        leia(venda_alc)
        
        se(venda_alc >= 1){
            alcool_estoque = alcool_estoque - venda_alc
            valor_venda_alc = venda_alc * 10.90
            porc_alc = venda_alc * 8.00
            lucro_alc = ((valor_venda_alc - porc_alc)/ porc_alc) *100 
            escreva("\nNumero de alcool em gel atual: ",alcool_estoque)
            escreva("\nCom cada alcool em gel sendo vendida a R$10.90, o valor da venda ao cliente foi: ",valor_venda_alc)
            escreva("\nLucro da farmacia, em porcentagem,da venda ao cliente é: ", lucro_alc,"%")
            Util.aguarde(3000)
        }senao{
            opcao=0
            enquanto(opcao!=2){
		    
		   escreva("\nNenmhum numero de venda de alcool em gel foi adicionado\n")
		   escreva("1. Quer Tentar Novamente\n")
		   escreva("2. Encerrar sessão\n")
           escreva("Informe qual opção deseja: \n")
           leia(opcao)
           
            se(opcao==1)
            {
                alcool_saida()
            }
          }    
        }
    }
    
    funcao alcool_mostrar_estoque()
    {
        limpa()
        se(alcool_estoque >= 1){
        alcool_estoque = alcool_estoque + 0    
        escreva("\nEstoque atual de alcool em gel: ",alcool_estoque)
        Util.aguarde(3000)
        }senao{
            escreva("\nNão há alcool em gel no estoque.\n")
            Util.aguarde(3000)
        }
    }
    funcao alcool_zerar_estoque()
    {
        limpa()
        se(alcool_estoque >= 1){
        alcool_estoque = alcool_estoque - alcool_estoque    
        escreva("\nEstoque de alcool em gel zerado= ",alcool_estoque)
        Util.aguarde(3000)
        }senao{
            escreva("\nNão há alcool em gel no estoque.\n")
            Util.aguarde(3000)
        }
    }
        
        
    
    
    // vacina
    funcao menu_vacina()
    {
        opcao=0
        enquanto(opcao!=5)
        {
            limpa()
            escreva("Submenu - Gestão vacina da COVID-19\n\n")
            escreva("1 Registrar compra de vacina da COVID-19\n")
            escreva("2 Registrar venda de vacina da COVID-19\n")
            escreva("3 Mostrar estoque atual de vacina da COVID-19\n")
            escreva("4 Zerar estoque de álcool vacina da COVID-19\n")
            escreva("5 Voltar ao menu anterior\n")
            escreva("Informe a opcao desejada:  ")
            leia(opcao)
            se(opcao==1)
            {
                vacina_entrada()
            }
            se(opcao==2)
            {
                vacina_saida()
            }
            se(opcao==3)
            {
                vacina_mostrar_estoque()
            }
            se(opcao==4)
            {
                vacina_zerar_estoque()
            }
            se(opcao==5)
            {
                menu_principal()
            }
        }
    }

    funcao vacina_entrada()
    {
         limpa()
        escreva("\nAtualizar o estoque de vacinas da COVID-19\n")
        escreva("\nInsira o numero de novas vacinas da COVID-19 compradas: ")
        leia(compra_vac)
        
        se(compra_vac >= 1){
            vacina_estoque = vacina_estoque + compra_vac
            valor_compra_vac = compra_vac * 150.00
            escreva("\nNumero de vacinas da COVID-19 atual: ",vacina_estoque)
            escreva("\nCom cada vacinas da COVID-19 sendo comprada a R$150.00, o valor da compra foi: ",valor_compra_vac)
            Util.aguarde(3000)
        }senao{
            opcao=0
            enquanto(opcao!=2){
		    
		   escreva("\nNenmhum numero da compra de vacinas da COVID-19 foi adicionado\n")
		   escreva("1. Quer Tentar Novamente\n")
		   escreva("2. Encerrar sessão\n")
           escreva("Informe qual opção deseja: \n")
           leia(opcao)
           
            se(opcao==1)
            {
                vacina_entrada()
            }
          }    
        }
    }
    
    funcao vacina_saida()
    {
        limpa()
        escreva("\nAtualizar o estoque de vacinas da COVID-19\n")
        escreva("\nInsira o numero de vacinas da COVID-19 vendidas: ")
        leia(venda_vac)
        
        se(venda_vac >= 1){
            vacina_estoque = vacina_estoque - venda_vac
            valor_venda_vac = venda_vac * 199.90
            porc_vac = venda_vac * 150.00
            lucro_vac = ((valor_venda_vac - porc_vac)/ porc_vac) *100 
            escreva("\nNumero de vacina da COVID-19 atual: ",vacina_estoque)
            escreva("\nCom cada vacina da COVID-19 sendo vendida a R$199.90, o valor da venda ao cliente foi: ",valor_venda_vac)
            escreva("\nLucro da farmacia, em porcentagem,da venda ao cliente é: ", lucro_vac,"%")
            Util.aguarde(3000)
        }senao{
            opcao=0
            enquanto(opcao!=2){
		    
		   escreva("\nNenmhum numero de venda de vacinas da COVID-19 foi adicionado\n")
		   escreva("1. Quer Tentar Novamente\n")
		   escreva("2. Encerrar sessão\n")
           escreva("Informe qual opção deseja: \n")
           leia(opcao)
           
            se(opcao==1)
            {
                vacina_saida()
            }
          }    
        }
    }
    
    funcao vacina_mostrar_estoque()
    {
        limpa()
        se(vacina_estoque >= 1){
        vacina_estoque = vacina_estoque + 0    
        escreva("\nEstoque atual de vacinas da COVID-19: ",vacina_estoque)
        Util.aguarde(3000)
        }senao{
            escreva("\nNão há vacinas da COVID-19 no estoque.\n")
            Util.aguarde(3000)
        }
    }
    funcao vacina_zerar_estoque()
    {
        limpa()
        se(vacina_estoque >= 1){
        vacina_estoque = vacina_estoque - vacina_estoque    
        escreva("\nEstoque de vacina da COVID-19 zerado= ",vacina_estoque)
        Util.aguarde(3000)
        }senao{
            escreva("\nNão há vacinas da COVID-19 no estoque.\n")
            Util.aguarde(3000)
        }
    }
    funcao mostrar_lucro()
    {
        limpa()
        se((valor_venda_mas + valor_venda_alc + valor_venda_vac)>=1){
	    lucro = ((valor_venda_mas + valor_venda_alc + valor_venda_vac) - (porc_mas + porc_alc + porc_vac))
	    escreva("\nLucros das vendas é:\n",lucro)
	    Util.aguarde(3000)
        }senao{
            escreva("\nNão houve vendas de nenhum dos três produtos da famarcia\n")
	        Util.aguarde(3000)
        }
    }
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 14999; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */