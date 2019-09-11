# Makefile 
# 
# Objetivo: Compilação de teste.f90, exemplo de utilização do dialog com
# Fortran.
# 
# Versão 1.0
# 
# Site: http://www.dirackslounge.online
# 
# Programador: Rodolfo A. C. Neves (Dirack) 11/09/2019
# 
# Email: rodolfo_profissional@hotmail.com
# 
# Licença: Software de uso livre e código aberto.


run:	teste.x
	./teste.x

comp:	teste.x

teste.x:	teste.f90 input_lib.o
	gfortran input_lib.o teste.f90 -o teste.x

input_lib.o:	input_lib.f90
	gfortran -c input_lib.f90

clean:
	rm *.o *.mod

