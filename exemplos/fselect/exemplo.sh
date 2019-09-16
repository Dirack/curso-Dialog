#!/bin/bash
#
# exemplo.sh (Shell Script)
# 
# Objetivo: Exemplo de uso fselect do Dialog.
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

ARQUIVO=$(dialog --stdout \
	--title "Escolha um arquivo para editar:" \
	--fselect ./teste/ \
	0 0)

[ -f "$ARQUIVO" ] && {
	gedit "$ARQUIVO" &
	exit 0
}

dialog --msgbox "Arquivo NÃO encontrado!" 0 0
exit 1
