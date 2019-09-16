#!/bin/bash
#
# exemplo.sh (Shell Script)
# 
# Objetivo: Exemplo de uso checklist com help do Dialog
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

MENSAGEMAJUDA="
Selecione na lista as tarefas finalizadas
Tecle a barra de espaço para marcar/desmarcar um item da lista
"
while :
do

	ESCOLHA=$(dialog --stdout \
		--item-help \
		--separate-output \
		--help-button \
		--help-label "Ajuda" \
		--checklist "Lista de tarefas" \
		0 0 0 \
		"Lavar a louça" "" off "Urgente!" \
		"Arumar a casa" "" off "Tirar as folhas do quintal" \
		"Limpar o quarto" "" on "Não esquecer de trocar o lençol da cama")

	[ "$?" -ne "2" ] && {
		break
	}

	dialog --title "Ajuda" --msgbox "$MENSAGEMAJUDA" 0 0

done

echo -e "\nTarefas finalizadas:\n $ESCOLHA"
