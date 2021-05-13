## Msgbox

**[:arrow_left: Aula anterior](https://github.com/Geofisicando/curso-Dialog/blob/master/exemplos/olaMundoDialog/README.md#ol%C3%A1-mundo-dialog)** **[:arrow_up: Voltar para o índice](https://github.com/Geofisicando/curso-Dialog/blob/master/README.md#%C3%ADndice)**
**:arrow_right: Próxima aula**

Nesta aula iremos aprender a utilizar a caixa de diálogo Msgbox passando a mensagem a ser exibida a partir de uma variável. Primeiro criamos uma variável com a mensagem que queremos exibir na tela:

```sh
MENSAGEM="Esta é uma mensagem qualquer a ser exibida na tela do terminal"
```

Agora, utilizamos o dialog para gerar uma caixa de diálogo com a mensagem armazenada na variável (a altura da caixa é 20 e a largura 40):

```sh
dialog --msgbox "$MENSAGEM_AJUDA" 20 40
```
