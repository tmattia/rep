# language: pt

Funcionalidade: Cancelar Pedido
  Para que um pedido não seja fabricado por engano
  Como Secretária
  Eu quero cancelar ump pedido

    Cenário: Pedido Aguardando Confirmação
      Dado que um pedido aguardando confirmação existe
      E que eu estou na página do pedido
      Quando eu clicar em "Cancelar Pedido"
      Então eu devo ver uma mensagem de sucesso
      E eu devo ver o pedido na situação "Cancelado"

    Cenário: Pedido Confirmado
      Dado que um pedido confirmado existe
      E que eu estou na página do pedido
      Quando eu clicar em "Cancelar Pedido"
      Então eu devo ver uma mensagem de sucesso
      E eu devo ver o pedido na situação "Cancelado"
