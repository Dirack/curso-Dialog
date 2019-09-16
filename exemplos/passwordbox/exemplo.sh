#!/bin/bash
#
# exemplo.sh (Shell Script)
# 
# Objetivo: Exemplo de uso passwordbox do Dialog.
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

SENHA=$(dialog --stdout \
	--insecure \
	--title "Confirmação" \
	--passwordbox "Digite sua senha:" \
	0 0)

echo -e "\nSenha cadastrada: $SENHA"
