# language: pt

Funcionalidade: Adicionar informações de Pagamento, Comissão e Frete a um pedido
  Como Secretária
  Eu quero adicionar informações de Pagamento, Comissão e Frete a um pedido

  Contexto:
    Dado que um pedido existe
    E que eu estou na página de Pagamento, Comissão e Frete do pedido

    Cenário: Sucesso
      Quando eu preencher o formulário de Pagamento, Comissão e Frete com dados válidos
      Então eu devo ver uma mensagem de sucesso
      E eu devo ver o pedido

    Cenário: Dados inválidos
      Quando eu preencher o formulário de Pagamento, Comissão e Frete com dados inválidos
      Então eu devo ver uma mensagem de erro
      E eu devo ver os campos que contêm erros
