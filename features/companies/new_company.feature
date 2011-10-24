# language: pt

Funcionalidade: Cadastrar Representada
  Como Secretária
  Eu quero cadastrar uma representada

  Contexto:
    Dado que eu estou na página de adicionar representada

    Cenário: Sucesso
      Quando eu adicionar uma representada
      Então eu devo ver uma mensagem de sucesso
      E eu devo ver a nova representada

    Cenário: Dados inválidos
      Quando eu adicionar uma representada com dados inválidos
      Então eu devo ver uma mensagem de erro
      E eu devo ver os campos que contêm erros
      E eu não devo ver a nova representada

    Cenário: Nome duplicado
      Quando eu adicionar uma representada com nome duplicado
      Então eu devo ver uma mensagem de erro
      E eu devo ver o campo "Nome" com o erro "já está em uso"
      E eu não devo ver a nova representada
