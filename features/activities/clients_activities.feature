# language: pt

Funcionalidade: Registrar movimentações de clientes
  Para revisar rapidamente o que aconteceu no dia
  Como Representante
  Eu quero que o sistema registre as movimentações de clientes

    Cenário: Novo cliente
      Quando um cliente for cadastrado
      Então eu devo ver o cliente como "cadastrado" na lista de atividades

    Cenário: Editar cliente
      Quando um cliente for editado
      Então eu devo ver o cliente como "editado" na lista de atividades
