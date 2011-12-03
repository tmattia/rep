# language: pt

Funcionalidade: Finalizar Rascunho de Pedido
  Para que um pedido possa ser enviado para representada e cliente
  Como Secretária
  Eu quero finalizar um rascunho de pedido

    Cenário: Sucesso
      Dado que um rascunho completo de pedido existe
      Quando eu estou na página do pedido
      E eu clicar em "Enviar Pedido"
      Então eu devo ver uma mensagem de sucesso
      E eu devo ver o pedido na situação "Aguarda Confirmação"

    Cenário: Pedido Incompleto
      Dado que um rascunho incompleto de pedido existe
      Quando eu estou na página do pedido
      E eu clicar em "Enviar Pedido"
      Então eu devo ver uma mensagem de erro
      E eu devo ver o pedido na situação "Rascunho"
