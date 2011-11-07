# language: pt

Funcionalidade: Editar Cliente
  Como Secretária
  Eu quero editar um cliente

  Contexto:
    Dado que eu estou na página de editar cliente

    Cenário: Sucesso
      Quando eu preencher o formulário do cliente com dados válidos
      Então eu devo ver uma mensagem de sucesso
      E eu devo ver o cliente

    Cenário: Nome duplicado
      Quando eu preencher o formulário com o nome de um cliente que já existe
      Então eu devo ver uma mensagem de erro
      E eu devo ver o campo "Nome" com o erro "já está em uso"

    Cenário: CNPJ duplicado
      Quando eu preencher o formulário com o CNPJ de um cliente que já existe
      Então eu devo ver uma mensagem de erro
      E eu devo ver o campo "CNPJ" com o erro "já está em uso"
