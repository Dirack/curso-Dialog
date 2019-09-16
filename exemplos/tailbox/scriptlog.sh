#!/bin/bash
#
# scriptlog.sh (Shell Script)
# 
# Objetivo: Simular log do arquivo log.txt.
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

for i in $(seq 5)
do
	echo "Mensagem $i" >> ./log.txt
	sleep 5
done
