#!/bin/bash
#
# exemplo.sh (Shell Script)
# 
# Objetivo: Exemplo de uso checklist do Dialog.
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

TAREFAS=$(dialog --stdout \
	--title "Lista de tarefas" \
	--separate-output \
	--checklist "Marque as tarefas finalizadas:" \
	0 0 0 \
	"Lavar a louça" "1" on \
	"Arrumar a cama" "2" off \
	"Dar banho no cachorro" "3" on)

dialog --ok-label "Certo" --title "Vc terminou as seguintes tarefas:" --msgbox "$TAREFAS" 0 0
