# language: pt

Funcionalidade: Ver Pedido
  Para conferir a situação de um pedido antes de executar ações sobre ele
  Como Secretária
  Eu quero ver um pedido

    Cenário: Rascunho de Pedido
      Dado que um rascunho completo de pedido existe
      Quando eu estou na página do pedido
      Então eu devo ver o pedido
      E eu devo poder enviar o pedido
      E eu devo ver o pedido na situação "Rascunho"

    Cenário: Pedido Aguardando Confirmação
      Dado que um pedido aguardando confirmação existe
      Quando eu estou na página do pedido
      Então eu devo ver o pedido
      E eu devo poder confirmar o pedido
      E eu devo poder recusar o pedido
      E eu devo ver o pedido na situação "Aguarda Confirmação"

    Cenário: Pedido Confirmado
      Dado que um pedido confirmado existe
      Quando eu estou na página do pedido
      Então eu devo ver o pedido
      E eu devo poder cancelar o pedido
      E eu devo ver o pedido na situação "Confirmado"

    Cenário: Pedido Cancelado
      Dado que um pedido cancelado existe
      Quando eu estou na página do pedido
      Então eu devo ver o pedido
      E eu devo ver o pedido na situação "Cancelado"

    Cenário: Pedido Recusado
      Dado que um pedido recusado existe
      Quando eu estou na página do pedido
      Então eu devo ver o pedido
      E eu devo ver o pedido na situação "Recusado"
