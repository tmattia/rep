# language: pt

Funcionalidade: Buscar Pedido por Código
  Para acessar um pedido rapidamente
  Como Secretária
  Eu quero buscar um pedido por código

  Contexto:
    Dado que um pedido existe
    E que eu estou na página de listar pedidos

    Cenário: Sucesso
      Quando eu buscar pelo código do pedido
      Então eu devo ver o pedido
