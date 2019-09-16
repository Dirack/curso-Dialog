#!/bin/bash
#
# exemplo.sh (Shell Script)
# 
# Objetivo: Exemplo de uso calendar do Dialog.
# 
# Site: http://www.dirackslounge.online
# 
# Versão 1.0
# 
# Programador: Rodolfo Dirack 15/09/2019
# 
# Email: rodolfo_profissional@hotmail.com
# 
# Licença: GPL-3.0 <https://www.gnu.org/licenses/gpl-3.0.txt>.

DATA=$(dialog --stdout \
	--title "Sua data de nascimento:" \
	--calendar "oi" \
	0 0 \
	8 3 1992)

echo -e "\nSua data de nascimento: $DATA"
