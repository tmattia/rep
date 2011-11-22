# language: pt

Funcionalidade: Listar Transportadoras
  Como Secretária
  Eu quero ver uma lista das Transportadoras cadastrados

  Contexto:
    Dado que pelo menos uma Transportadora esteja cadastrada

    Cenário: Sucesso
      Quando eu estou na página de listar Transportadoras
      Então eu devo ver a lista das Transportadoras cadastradas
