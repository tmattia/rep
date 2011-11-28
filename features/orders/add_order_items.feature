# language: pt

Funcionalidade: Adicionar itens a um Pedido
  Para promover os produtos das representadas
  Como Vendedor
  Eu quero adicionar itens a um Pedido

  Contexto:
    Dado que um pedido existe
    E que eu estou na página de adicionar um item ao pedido

    Cenário: Adicionar um item
      Quando eu preencher o formulário do item com dados válidos
      E eu clicar em "Salvar"
      Então eu devo ver uma mensagem de sucesso
      E eu devo ver o pedido

    Cenário: Adicionar mais de um item
      Quando eu preencher o formulário do item com dados válidos
      E eu clicar em "Salvar e Adicionar Outro Item"
      Então eu devo ver uma mensagem de sucesso
      E eu devo ver a página de Adicionar Item ao pedido

    Cenário: Dados inválidos
      Quando eu preencher o formulário do item com dados inválidos
      E eu clicar em "Salvar"
      Então eu devo ver uma mensagem de erro
      E eu devo ver os campos que contêm erros
