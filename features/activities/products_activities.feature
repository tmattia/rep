# language: pt

Funcionalidade: Registrar movimentações de produtos
  Para revisar rapidamente o que aconteceu no dia
  Como Representante
  Eu quero que o sistema registre as movimentações de produtos

    Cenário: Novo produto
      Quando um produto for cadastrado
      Então eu devo ver o produto como "cadastrado" na lista de atividades

    Cenário: Editar produto
      Quando um produto for editado
      Então eu devo ver o produto como "editado" na lista de atividades

