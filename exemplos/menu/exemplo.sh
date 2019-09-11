#!/bin/bash
#
# exemplo.sh (Shell Script)
# 
# Objetivo: Exemplo de uso menubox Dialog
# 
# Site: http://www.dirackslounge.online
# 
# Versão 1.0
# 
# Programador: Rodolfo Dirack 10/09/2019
# 
# Email: rodolfo_profissional@hotmail.com
# 
# Licença: GPL-3.0 <https://www.gnu.org/licenses/gpl-3.0.txt>.


dialog --menu "Exemplo Menu Dialog" 0 0 0 listar "listar usuários" add adicionar rem remover

ESCOLHA=$( dialog --stdout \
	--menu "Exemplo interface Dialog" \
	0 0 0 \
	1 "opção 1" \
	2 "opção 2" \
	3 "opção 3" )

echo "O usuário escolheu: $ESCOLHA"
