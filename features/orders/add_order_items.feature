# language: pt

Funcionalidade: Adicionar itens a um Pedido
  Como Secretária
  Eu quero adicionar itens a um Pedido

  Contexto:
    Dado que um pedido existe
    E que eu estou na página de adicionar um item ao pedido

    Cenário: Sucesso
      Quando eu preencher o formulário do item com dados válidos
      E eu selecionar "Salvar"
      Então eu devo ver uma mensagem de sucesso
      E eu devo ver o pedido

    Cenário: Salvar e adicionar outro
      Quando eu preencher o formulário do item com dados válidos
      E eu selecionar "Salvar e Adicionar Outro Item"
      Então eu devo ver uma mensagem de sucesso
      E eu devo ver a página de Adicionar Item ao pedido

    Cenário: Dados inválidos
      Quando eu enviar o formulário do item com dados inválidos
      Então eu devo ver uma mensagem de erro
      E eu devo ver os campos que contêm erros
