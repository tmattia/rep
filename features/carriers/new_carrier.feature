# language: pt

Funcionalidade: Cadastrar Transportadora
  Como Secretária
  Eu quero cadastrar uma Transportadora

  Contexto:
    Dado que eu estou na página de adicionar Transportadora

    Cenário: Sucesso
      Quando eu preencher o formulário da Transportadora com dados válidos
      Então eu devo ver uma mensagem de sucesso
      E eu devo ver a Transportadora

    Cenário: Nome duplicado
      Quando eu preencher o formulário com o nome de uma Transportadora que já existe
      Então eu devo ver uma mensagem de erro
      E eu devo ver o campo "Nome" com o erro "já está em uso"
