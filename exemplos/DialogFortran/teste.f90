PROGRAM teste
USE input_lib
!
!	Objetivo: Exemplo de uso de input_lib.f90
!
!	Versão 1.0
!
!	Email: rodolfo_profissional@hotmail.com
!
!	Programador: Rodolfo A. C. Neves (Dirack) 30/01/2019

IMPLICIT NONE

INTEGER:: a,b,c ! inteiros passados pela linha de comandos
INTEGER:: resultado

! Verificar parâmetros passados pela linha de comandos
 a = merge(.GETINT."a",0, .GET."a")  
 b = merge(.GETINT."b", 0, .GET."b")
 c = merge(.GETINT."c",1,.GET."c")

IF (c  == 1) THEN
	resultado = a + b
ELSE
	resultado = a - b
END IF

! Escreva na tela
WRITE(*,*) resultado

END PROGRAM
