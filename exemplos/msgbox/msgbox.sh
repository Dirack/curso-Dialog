#!/bin/bash
#
# msgbox.sh (Shell Script)
# 
# Objetivo: Exemplo de utilização do programa Dialog - msgbox
# 
# Site: http://www.dirackslounge.online
# 
# Versão 1.0
# 
# Programador: Rodolfo Dirack 26/08/2019
# 
# Email: rodolfo_profissional@hotmail.com
# 
# Licença: GPL-3.0 <https://www.gnu.org/licenses/gpl-3.0.txt>.


MENSAGEM_AJUDA="$(basename $0) [-h | -v]
Este programa é um exemplo de utilização do msgbox do dialog.
-h --help Exibe esta mensagem de ajuda e sai
-v --version Exibe a versão do programa e sai
"

dialog --msgbox "$MENSAGEM_AJUDA" 20 40


read -p "Digite seu nome" NOME_DO_USUARIO

[ -z "$NOME_DO_USUARIO" ] && {
	MENSAGEM_ERRO="ERRO: O usuário não digitou o nome!"
	dialog --msgbox "$MENSAGEM_ERRO" 5 40
	exit 1
}












