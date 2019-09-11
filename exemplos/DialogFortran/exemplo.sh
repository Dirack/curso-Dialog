#!/bin/bash
#
# exemplo.sh (Shell Script)
# 
# Objetivo: Exemplo de utilização dialog com Fortran.
# 
# Site: http://www.dirackslounge.online
# 
# Versão 1.0
# 
# Programador: Rodolfo Dirack 11/09/2019
# 
# Email: rodolfo_profissional@hotmail.com
# 
# Licença: GPL-3.0 <https://www.gnu.org/licenses/gpl-3.0.txt>.


a=$(dialog --stdout --inputbox "Digite o valor de a:" 0 0 )
b=$(dialog --stdout --inputbox "Digite o valor de b:" 0 0 )

ESCOLHA=$(dialog --stdout \
	--menu "Calculadora Fortran Dialog" \
	0 0 0 \
	Somar "Soma a + b" \
	Subtrair "subtrai a - b" )

if [ "$ESCOLHA" == "Somar" ]
then
	resultado=$(./teste.x a="$a" b="$b" c=1)
	dialog --msgbox "A Soma de $a + $b = $resultado" 0 0
	exit 0
elif [ "$ESCOLHA" == "Subtrair" ]
then
	resultado=$(./teste.x a="$a" b="$b")
	dialog --msgbox "A Diferença de $a - $b = $resultado" 0 0
	exit 0
fi


