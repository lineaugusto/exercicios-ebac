# language: pt
Funcionalidade: Configurar produto
Como cliente da EBAC SHOP
Quero configurar meu produto de acordo com meu tamanho e gosto
E escolher a quantidade
Para depois inserir no carrinho

  Contexto: 
    Dado que ao selecionar o produto no portal da EBAC SHOP

  Esquema do Cenário: Seleções de cor, tamanho e quantidade
    Quando eu selecionar um <produto>
    E escolher <cor>, <tamanho> e <quantidade>
    Então deve exibir uma <mensagem> de "Item obrigatório"

    Exemplos: 
      | produto    | cor       | tamanho | quantidade | mensagem           |
      | "camiseta" | "preta"   | "GG"    | "1"        | "Item obrigatório" |
      | "calça"    | "amarela" | "EG"    | "1"        | "Item obrigatório" |
      | "vestido"  | "verde"   | "G"     | "2"        | "Item obrigatório" |

  Esquema do Cenário: Quantidade de produtos
    Quando eu selecionar um <produto>
    E colocar uma <quantidade> superior a 10
    Então deve aparecer a <mensagem> "Máximo 10 produtos por venda"

    Exemplos: 
      | produto    | quantidade | mensagem                       |
      | "camiseta" | "12"       | "Máximo 10 produtos por venda" |
      | "calça"    | "15"       | "Máximo 10 produtos por venda" |
      | "vestido"  | "20"       | "Máximo 10 produtos por venda" |

  Cenário: Voltar ao estado original
    Quando eu desistir do produto
    E ao clicar no botão "limpar"
    Então deve voltar ao estado original
