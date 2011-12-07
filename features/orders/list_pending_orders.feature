# language: pt

Funcionalidade: Listar Pedidos Pendentes
  Para encontrar facilmente todos os pedidos que não foram enviados ou confirmados
  Como Secretária
  Eu quero ver uma lista de pedidos pendentes no Mural

    Cenário: Pedido não enviado
      Dado que um rascunho completo de pedido existe
      Quando eu estou na página do Mural
      Então eu devo ver uma lista de pedidos

    Cenário: Pedido aguardando confirmação
      Dado que um pedido aguardando confirmação existe
      Quando eu estou na página do Mural
      Então eu devo ver uma lista de pedidos

    Cenário: Nenhum pedido não confirmado
      Quando eu estou na página do Mural
      Então eu não devo ver uma lista de pedidos
