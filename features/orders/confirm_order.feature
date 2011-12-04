# language: pt

Funcionalidade: Confirmar Recebimento de Pedido
  Para que todos saibam que o pedido será produzido
  Como Cliente
  Eu quero confirmar o recebimento de um pedido

  Contexto:
    Dado que um pedido aguardando confirmação existe
    E que eu estou na página do pedido

    Cenário: Sucesso
      Quando eu clicar em "Confirmar Recebimento do Pedido"
      Então eu devo ver uma mensagem de sucesso
      E eu devo ver o pedido na situação "Confirmado"
