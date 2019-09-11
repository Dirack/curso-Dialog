MODULE input_lib
!
!       Objetivo: Conjunto de finções para tratar entradas
!       através da linha de comandos.
!
!       Versão 1.0
!
!       Programador: Rodolfo A. C. Neves (Dirack) 30/01/2019
!
!	email(manutenção): rodolfo_profissional@hotmail.com
!
!	Exemplo de uso:
!
!
!               REAL:: r
!               INTEGER:: i
!		CHARACTER(len=5):: str1="10"
!		CHARACTER(len=5):: str2="1.5"
!
!               i = .GET.str1 ! str1 é uma variável do tipo CHARACTER
!               r = .GET.str2 ! str2 é uma variável do tipo CHARACTER
      
IMPLICIT NONE

INTERFACE OPERATOR (.GETINT.)
        MODULE PROCEDURE integerPassadoLinhaComandos
END INTERFACE

INTERFACE OPERATOR (.GETREAL.)
        MODULE PROCEDURE realPassadoLinhaComandos
END INTERFACE

INTERFACE OPERATOR (.GET.)
       MODULE PROCEDURE verificaSeArgumentoFoiPassado
END INTERFACE

CONTAINS

	! Retornar valor do argumento passado ao programa através
	! da linha de comandos na forma 'chave=valor'
	FUNCTION retornaValorArgumento(chaveProcurada)
		CHARACTER(len=*),INTENT(IN):: chaveProcurada
		CHARACTER(len=20):: retornaValorArgumento
		INTEGER:: numArgumentosPassadosLinhaComandos
		INTEGER:: i, chaveFoiEncontrada, indiceDoCaractereIgual
		CHARACTER(len=20):: chaveLida

     		numArgumentosPassadosLinhaComandos=COMMAND_ARGUMENT_COUNT()

		DO i=1,numArgumentosPassadosLinhaComandos

			CALL GET_COMMAND_ARGUMENT(i, chaveLida)

			! len_trim: Pegua o último caractere não branco de 'chaveLida'
			! index: Procura o índice da primeira ocorrência de 
			! uma substring, da esquerda para a direita.
			! O índice retornado por index deve ser
			! 1 para indicar que o parâmetro foi passado, se for
			! diferente de um, este parâmetro não foi passado
		
			chaveFoiEncontrada = index(chaveLida(1:len_trim(chaveLida)),chaveProcurada//"=")

			IF ( chaveFoiEncontrada == 1) THEN

				! Retire só o valor do argumento passado na forma 'var=valor'
				indiceDoCaractereIgual=index(chaveLida(1:len_trim(chaveLida)),"=")

				retornaValorArgumento = chaveLida(indiceDoCaractereIgual+1:len_trim(chaveLida))
				RETURN
				
			END IF

		END DO

		retornaValorArgumento = "NULL"
		
	END FUNCTION retornaValorArgumento


	! Verificar se o argumento 'chave=valor' foi passado pelo usuário
	FUNCTION verificaSeArgumentoFoiPassado(chave)
		LOGICAL:: verificaSeArgumentoFoiPassado
		CHARACTER(len=*),INTENT(IN):: chave

		IF(COMMAND_ARGUMENT_COUNT()==0) THEN
			verificaSeArgumentoFoiPassado = .false.
			RETURN

		ELSE IF(retornaValorArgumento(chave) /= "NULL" ) THEN

			verificaSeArgumentoFoiPassado = .true.
			RETURN

		ELSE
			verificaSeArgumentoFoiPassado = .false.
			RETURN

		END IF

	END FUNCTION verificaSeArgumentoFoiPassado

	! Recebe um INTEGER passado pela linha de comandos
	! na forma 'chave=valor'
	FUNCTION integerPassadoLinhaComandos(chave)
		CHARACTER (len=*), INTENT(IN):: chave
		INTEGER:: integerPassadoLinhaComandos
		CHARACTER(len=20):: valorArgumento

     		valorArgumento = retornaValorArgumento(chave)

		IF(valorArgumento /= "NULL") THEN
			READ(valorArgumento , *) integerPassadoLinhaComandos
			RETURN
		END IF
		
		integerPassadoLinhaComandos = 0

	END FUNCTION integerPassadoLinhaComandos

	! Recebe um REAL passado pela linha de comandos
	! na forma 'chave=valor'
	FUNCTION realPassadoLinhaComandos(chave)
		CHARACTER (len=*), INTENT(IN):: chave
		REAL:: realPassadoLinhaComandos
		CHARACTER(len=20):: valorArgumento

		valorArgumento = retornaValorArgumento(chave)

		IF(valorArgumento /= "NULL") THEN

			READ(valorArgumento, *) realPassadoLinhaComandos
			RETURN

		END IF

		realPassadoLinhaComandos = 0.

	END FUNCTION realPassadoLinhaComandos

END MODULE
