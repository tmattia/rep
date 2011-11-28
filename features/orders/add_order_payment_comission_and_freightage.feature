# language: pt

Funcionalidade: Adicionar informações de Pagamento, Comissão e Frete a um pedido
  Para garantir a cobrança e entrega de um pedido
  Como Vendedor
  Eu quero adicionar informações de Pagamento, Comissão e Frete a um pedido

  Contexto:
    Dado que um pedido existe
    E que uma transportadora existe
    E que eu estou na página de Pagamento, Comissão e Frete do pedido

    Cenário: Frete CIF
      Quando eu selecionar frete do tipo "CIF"
      E eu enviar o formulário de pagamento e comissão com dados válidos
      Então eu devo ver uma mensagem de sucesso
      E eu devo ver o pedido

    Cenário: Frete FOB com transportadora
      Quando eu selecionar frete do tipo "FOB"
      E eu selecionar uma transportadora
      E eu enviar o formulário de pagamento e comissão com dados válidos
      Então eu devo ver uma mensagem de sucesso
      E eu devo ver o pedido

    Cenário: Frete FOB sem transportadora
      Quando eu selecionar frete do tipo "FOB"
      Mas eu não selecionar uma transportadora
      E eu enviar o formulário de pagamento e comissão com dados válidos
      Então eu devo ver uma mensagem de erro
      E eu devo ver o campo "Transportadora" com o erro "não pode ficar em branco"

    Cenário: Dados inválidos
      Quando eu não selecionar uma transportadora
      E eu enviar o formulário de pagamento e comissão com dados inválidos
      Então eu devo ver uma mensagem de erro
      E eu devo ver os campos que contêm erros
