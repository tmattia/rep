# language: pt

@working
Funcionalidade: Ver Pedido
  Como Secretária
  Eu quero ver os dados de um Pedido cadastrado

    Cenário: Sucesso
      Dado que um pedido existe
      Quando eu estou na página do pedido
      Então eu devo ver os dados do pedido
