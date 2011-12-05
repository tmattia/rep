# language: pt

Funcionalidade: Registrar movimentações de pedidos
  Para revisar rapidamente o que aconteceu no dia
  Como Representante
  Eu quero que o sistema registre as movimentações de pedidos

    Cenário: Novo pedido
      Quando um pedido for cadastrado
      Então eu devo ver o pedido como "cadastrado" na lista de atividades

    Cenário: Pedido enviado
      Quando um pedido for enviado
      Então eu devo ver o pedido como "enviado" na lista de atividades
