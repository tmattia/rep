# language: pt

Funcionalidade: Adicionar Produto
  Como Secretária
  Eu quero adicionar um produto

  Contexto:
    Dado que pelo menos uma representada esteja cadastrada
    E que eu estou na página de adicionar produto

    Cenário: Sucesso
      Quando eu preencher o formulário do produto com dados válidos
      Então eu devo ver uma mensagem de sucesso
      E eu devo ver o produto

    Cenário: Código duplicado
      Quando eu preencher o formulário com o código de um produto que já existe
      Então eu devo ver uma mensagem de erro
      E eu devo ver o campo "Código" com o erro "já está em uso"
