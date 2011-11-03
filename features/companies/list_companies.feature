# language: pt

Funcionalidade: Listar Representadas
  Como Secretária
  Eu quero ver uma lista das Representadas cadastradas

  Contexto:
    Dado que pelo menos uma representada esteja cadastrada

    Cenário: Sucesso
      Quando eu estou na página de listar representadas
      Então eu devo ver a lista das representadas cadastradas
