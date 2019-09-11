#!/bin/bash
#
# exemplo.sh (Shell Script)
# 
# Objetivo: Exemplo yesNoBox do Dialog
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

dialog \
	--title "Apagar arquivo" \
	--yesno "Deseja remover teste.txt?" \
	0 0

[ -f "teste.txt" -a "$?" -eq "0" ] && {
	rm "teste.txt"
	dialog --msgbox "Arquivo teste.txt removido com sucesso!" 0 0
	exit 0
}

dialog --msgbox "Arquivo teste.txt NÃO removido" 0 0




