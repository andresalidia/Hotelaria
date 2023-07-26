// Disciplina   : [Linguagem e Logica de Programação]
// Professor   : Antonio Carlos Nicolodi
// Descrição   : O programa serve para fazer uma reserva em um hotel e no final mostra o total a ser pago.
// Autor(a)    : Andresa Lídia,Isis Vitória, Igor de Melo,Abdiel Abadio
// Data atual  : 28/02/2023
programa
{
	inclua biblioteca Util --> u
	real contafinal=0.0
	cadeia quarto
	real somatotaldiaria
	funcao quartos(inteiro x)
	{
		se(x==1){
			quarto= " solteiro"
		}
		se(x==2){
			quarto="casal"
		}
		se(x==3){
			quarto="família"
		}	
		escreva(quarto)
			
	}
	
	funcao valorDiaria(inteiro dia, inteiro tipoquarto){
		
		se(tipoquarto==1){
			somatotaldiaria=100.00*dia
		}
		se(tipoquarto==2){
			somatotaldiaria=200.00*dia
		}
		se(tipoquarto==3){
			somatotaldiaria=350.00*dia
		}
		escreva(somatotaldiaria)
		contafinal = somatotaldiaria
				
	}
	
	funcao CafeDaManha (caracter incluso, inteiro quantidadedia, inteiro quantidadepessoas){
		
		real valorcafedamanha=0.0
		
		se( incluso == 'n'){
			escreva("\nCafé da Manhã não incluso,total a ser pago: R$",valorcafedamanha,"\n")
		}senao{
			valorcafedamanha = 50.0*quantidadepessoas*quantidadedia
			escreva("\nCafé da Manhã incluso, total a ser pago: R$",valorcafedamanha,"\n")
		}
		contafinal = contafinal+valorcafedamanha	 
	}
	
	funcao inicio()
	{
		cadeia nome
		inteiro opcao,dias,pessoas
		caracter refeicao
		escreva("\n\n\tOlá, bem-vindo(a) ao nosso Hotel Java Paradasi, vamos iniciar o cadastro de reserva!\n\n")
		u.aguarde(5000)
		limpa()
		escreva("-----------------------------------------------------------------------------------------\n")
		escreva(" \t                               r e s e r v a:                                        \n")
		escreva("-----------------------------------------------------------------------------------------\n")
		escreva("~>informe o seu nome:")
		leia(nome)
		 escreva("~>Informe o número de pessoas:")
	     leia(pessoas)
		escreva("~>Informe o tipo de quarto que Deseja, digite:\n")
		escreva("1-Quarto de solteiro (Diária R$ 100,00);\n2-Quarto de casal (Diária R$ 200,00)\n3-Quarto de família (Diária R$ 350,00): ")
	     leia(opcao)
	     escreva("~>Quantidade de dias no hotel:")
	     leia(dias)
	     escreva("~>Deseja café da manhã incluso(R$ 50,00 por dia e pessoa) s/n:")
	     leia(refeicao)
	     limpa()
	     escreva("-----------------------------------------------------------------------------------------\n")
		escreva(" \t                   r e l a t ó r i o     F i n a l:                                        \n")
		escreva("-----------------------------------------------------------------------------------------\n")
		escreva("cliente:",nome,"\n")
		escreva("Tipo de Quarto:")
		quartos(opcao)
		escreva("\nValor Total da diária:")
		valorDiaria(dias,opcao)
		CafeDaManha (refeicao,dias,pessoas)
		escreva("Conta final:",contafinal)
	}
	
			
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 254; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */