## Olá mundo, Dialog!

**:arrow_left: Aula anterior** **[:arrow_up: Voltar para o índice](https://github.com/Geofisicando/curso-Dialog/blob/master/README.md#%C3%ADndice)** **[:arrow_right: Próxima aula](https://github.com/Geofisicando/curso-Dialog/tree/master/exemplos/msgbox#msgbox)**

Iremos apresentar o Dialog, um programa simples que serve para gerar interfaces gráficas de usuário simples no terminal do Shell. Estas caixas de diálogo podem ser utilizadas com Shell Scripts para servir de interface iterativa com o usuário, gerar formulários simples e avisos (veremos tudo isto nas próximas aulas).

* Para gerar uma caixa de diálogo no terminal com a mensagem 'Olá mundo dialog', digite o seguinte comando no teminal:

```sh
dialog --msgbox 'Olá mundo dialog' 5 40
```

O 'dialog' é a chamada ao programa, a flag '-msgbox' serve para gerar a caixa de diálogo com a mensagem que vem a seguir 'Olá mundo dialog' e os números 5 e 40 são as dimensões da caixa de diálogo, altura e largura, respectivamente. Se utilizados os valores 0 e 0 para a altura e largura da caixa, esta irá se adaptar ao texto da mensagem a ser exibida. Experimente:

```sh
dialog --msgbox 'Olá mundo dialog' 0 0
```
