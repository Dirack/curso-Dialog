#!/bin/bash
#
# exemplo.sh (Shell Script)
# 
# Objetivo: Exemplo de uso do inputbox do dialog.
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

#NOME=$(dialog --stdout \
#	--inputbox "Digite o seu nome:" \
#	0 0)
#
#dialog --msgbox "Olá $NOME" 0 0


ARQUIVO=$(dialog --stdout \
	--inputbox "Digite o nome de um arquivo para buscar:" \
	0 0)

[ -f "$ARQUIVO" ] && {
	dialog --msgbox "Arquivo $ARQUIVO encontrado!" 0 0
	exit 0
}

dialog --msgbox "Arquivo $ARQUIVO NÃO encontrado na pasta atual!" 0 0
exit 1
