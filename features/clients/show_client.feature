# language: pt

Funcionalidade: Ver Cliente
  Como Secretária
  Eu quero ver os dados de um Cliente cadastrado

    Cenário: Sucesso
      Dado que eu estou na página de um cliente
      Então eu devo ver os dados do cliente
      E eu devo ver uma lista de pedidos recentes
      E eu devo ver um link para ver o cliente no mapa
