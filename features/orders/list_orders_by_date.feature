# language: pt

Funcionalidade: Listar Pedidos por Data
  Para encontrar pedidos facilmente
  Como Secretária
  Eu quero ver uma lista de pedidos cadastrados em um determinado dia

  Contexto:
    Dado que um pedido existe
    E que eu estou na página de listar pedidos

    Cenário: Sucesso
      Quando eu selecionar uma data que tenha pelo menos um pedido cadastrado
      Então eu devo ver uma lista de pedidos

    Cenário: Nenhum pedido
      Quando eu selecionar uma data que não tenha pedidos cadastrados
      Então eu não devo ver uma lista de pedidos
