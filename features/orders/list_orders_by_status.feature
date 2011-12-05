# language: pt

@working
Funcionalidade: Listar Pedidos por Status
  Para encontrar facilmente os pedidos que não foram enviados ou confirmados
  Como Secretária
  Eu quero ver uma lista de pedidos que estão em uma determinada situação

  Contexto:
    Dado que um rascunho completo de pedido existe
    E que um rascunho incompleto de pedido existe
    E que um pedido aguardando confirmação existe
    E que um pedido confirmado existe
    E que um pedido cancelado existe
    E que um pedido recusado existe
    E que eu estou na página de listar pedidos

    Cenário: Rascunhos
      Quando eu selecionar a situação "Rascunho"
      Então eu devo ver somente os rascunhos de pedido

    Cenário: Aguardando Confirmação
      Quando eu selecionar a situação "Aguarda Confirmação"
      Então eu devo ver somente os pedidos agurdando confirmação

    Cenário: Confirmados
      Quando eu selecionar a situação "Confirmado"
      Então eu devo ver somente os pedidos confirmados

    Cenário: Cancelados
      Quando eu selecionar a situação "Cancelado"
      Então eu devo ver somente os pedidos cancelados

    Cenário: Recusados
      Quando eu selecionar a situação "Recusado"
      Então eu devo ver somente os pedidos recusados
