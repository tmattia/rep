# language: pt

Funcionalidade: Editar Representada
  Como Secretária
  Eu quero editar uma representada

  Contexto:
    Dado que eu estou na página de editar representada

    Cenário: Sucesso
      Quando eu preencher o formulário com dados válidos
      Então eu devo ver uma mensagem de sucesso
      E eu devo ver a representada

    Cenário: Dados inválidos
      Quando eu preencher o formulário com dados inválidos
      Então eu devo ver uma mensagem de erro
      E eu devo ver os campos que contêm erros

    Cenário: Nome duplicado
      Quando eu preencher o formulário com o nome de uma representada que já existe
      Então eu devo ver uma mensagem de erro
      E eu devo ver o campo "Nome" com o erro "já está em uso"
