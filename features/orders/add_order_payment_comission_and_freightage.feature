# language: pt

Funcionalidade: Adicionar informações de Pagamento, Comissão e Frete a um pedido
  Como Secretária
  Eu quero adicionar informações de Pagamento, Comissão e Frete a um pedido

  Contexto:
    Dado que um pedido existe
    E que uma transportadora existe
    E que eu estou na página de Pagamento, Comissão e Frete do pedido

    Cenário: Frete CIF
      Quando eu preencher o formulário de Pagamento, Comissão e Frete com dados válidos
      E eu selecionar frete do tipo "CIF"
      E eu selecionar "Salvar"
      Então eu devo ver uma mensagem de sucesso
      E eu devo ver o pedido

    Cenário: Frete do tipo FOB com transportadora
      Quando eu preencher o formulário de Pagamento, Comissão e Frete com dados válidos
      E eu selecionar frete do tipo "FOB"
      E eu selecionar uma transportadora
      E eu selecionar "Salvar"
      Então eu devo ver uma mensagem de sucesso
      E eu devo ver o pedido

    Cenário: Frete do tipo FOB sem transportadora
      Quando eu preencher o formulário de Pagamento, Comissão e Frete com dados válidos
      E eu selecionar frete do tipo "FOB"
      E eu selecionar "Salvar"
      Então eu devo ver uma mensagem de erro
      E eu devo ver o campo "Transportadora" com o erro "não pode ficar em branco"

    Cenário: Dados inválidos
      Quando eu enviar o formulário de Pagamento, Comissão e Frete com dados inválidos
      Então eu devo ver uma mensagem de erro
      E eu devo ver os campos que contêm erros
