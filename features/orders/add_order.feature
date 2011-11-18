# language: pt

Funcionalidade: Cadastrar Pedido
  Como Secretária
  Eu quero cadastrar um Pedido

  Contexto:
    Dado que eu estou na página de adicionar pedido

    Cenário: Cadastro completo
      Quando eu preencher o formulário do pedido com dados válidos
      E eu selecionar "Pagamento, Comissão e Frete »"
      Então eu devo ver uma mensagem de sucesso
      E eu devo ver a página de Pagamento, Comissão e Frete do pedido

    Cenário: Cadastro mínimo para adicionar itens rapidamente
      Quando eu preencher o formulário do pedido com dados válidos
      E eu selecionar "Adicionar Itens »"
      Então eu devo ver uma mensagem de sucesso
      E eu devo ver a página de Adicionar Item ao pedido

    Cenário: Dados inválidos
      Quando eu enviar o formulário do pedido com dados inválidos
      Então eu devo ver uma mensagem de erro
      E eu devo ver os campos que contêm erros
