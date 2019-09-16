#!/bin/bash
#
# exemplo.sh (Shell Script)
# 
# Objetivo: Exemplo de uso de tailbox do Dialog.
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

ARQUIVO="./log.txt"

./scriptlog.sh &

dialog \
	--title "Monitorando $(basename $ARQUIVO):" \
	--tailbox "$ARQUIVO" \
	15 40

