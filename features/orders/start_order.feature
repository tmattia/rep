# language: pt

Funcionalidade: Iniciar cadastro de Pedido
  Para que eu possa anotar rapidamente os dados mais importantes de um pedido
  Como Vendedor
  Eu quero iniciar o cadastro de um pedido

  Contexto:
    Dado que um cliente existe
    E que uma representada existe
    E que eu estou na página de adicionar pedido

    Cenário: Sucesso
      Quando eu selecionar um cliente
      E eu selecionar uma representada
      E eu clicar em "Adicionar Itens »"
      Então eu devo ver uma mensagem de sucesso
      E eu devo ver a página de Adicionar Item ao pedido

    Cenário: Vendedor esqueceu de selecionar representada
      Quando eu selecionar um cliente
      Mas eu esquecer de selecionar uma representada
      E eu clicar em "Adicionar Itens »"
      Então eu devo ver uma mensagem de erro
      E eu devo ver o campo "Representada" com o erro "não pode ficar em branco"

    Cenário: Vendedor esqueceu de selecionar cliente
      Quando eu selecionar uma representada
      Mas eu esquecer de selecionar um cliente
      E eu clicar em "Adicionar Itens »"
      Então eu devo ver uma mensagem de erro
      E eu devo ver o campo "Cliente" com o erro "não pode ficar em branco"

