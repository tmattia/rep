# language: pt

Funcionalidade: Listar Clientes
  Como Secretária
  Eu quero ver uma lista dos Clientes cadastrados

  Contexto:
    Dado que pelo menos um cliente esteja cadastrado

    Cenário: Sucesso
      Quando eu estou na página de listar clientes
      Então eu devo ver a lista dos clientes cadastrados
