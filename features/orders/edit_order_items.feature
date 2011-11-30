# language: pt

@working
Funcionalidade: Editar itens de um pedido
  Para que um pedido não seja enviado com itens errados
  Como Vendedor
  Eu quero editar itens de um pedido

  Contexto:
    Dado que um pedido existe
    E que o pedido possui pelo menos um item

    Cenário: Sucesso
      Dado que eu estou na página de editar um item do pedido
      Quando eu preencher o formulário do item com dados válidos
      E eu clicar em "Salvar"
      Então eu devo ver uma mensagem de sucesso
      E eu devo ver o pedido

    Cenário: Dados inválidos
      Dado que eu estou na página de editar um item do pedido
      Quando eu preencher o formulário do item com dados inválidos
      Então eu devo ver uma mensagem de erro
      E eu devo ver os campos que contêm erros

    Cenário: Remover item
      Dado que eu estou na página de editar um item do pedido
      Quando eu clicar em "Excluir"
      Então eu devo ver uma mensagem de sucesso
      E eu devo ver o pedido
      E eu não devo ver o item
