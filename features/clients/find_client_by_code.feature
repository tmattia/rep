# language: pt

Funcionalidade: Buscar Cliente por Código
  Para acessar um cliente rapidamente
  Como Secretária
  Eu quero buscar um cliente por código

  Contexto:
    Dado que um cliente existe
    E que eu estou na página de listar clientes

    Cenário: Sucesso
      Quando eu buscar pelo código do cliente
      Então eu devo ver o cliente

