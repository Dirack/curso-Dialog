#!/bin/bash
#
# gauge.sh (Shell Script)
# 
# Objetivo: Exemplo de utilização da widget gauge (barra de progresso) do Dialog.
# 
# Site: https://dirack.github.io
# 
# Versão 1.0
# 
# Programador: Rodolfo A C Neves (Dirack) 08/10/2020
# 
# Email: rodolfo_profissional@hotmail.com
# 
# Licença: GPL-3.0 <https://www.gnu.org/licenses/gpl-3.0.txt>.

GAUGE(){

echo $1 | dialog --title "Instalação dos pacotes" \
	--gauge "Instalação do programa x" \
	8 40 0
}

GAUGE 0

sleep 5

GAUGE 10

sleep 5

GAUGE 50

sleep 5

GAUGE 100

sleep 2

dialog --title 'Parabéns' \
	--msgbox 'Instalação finalizada com sucesso!' \
	8 40

clear
