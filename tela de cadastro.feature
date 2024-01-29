# language: pt

Funcionalidade: Tela de cadastro - Checkout
Como cliente da EBAC SHOP
Quero concluir meu cadastro
Para finalizar minha compra

  Contexto: 
    Dado que eu acesse a tela de cadastro do portal EBAC SHOP e visualize os dados obrigatórios a preencher:

      | *nome | *sobrenome | *endereço | *cidade | *estado | *país | *cep | *e-mail | *telefone |

  Cenário: Cadastro com dados obrigatórios
    Quando eu inserir as informações pessoais
    E todos os campos marcados com "*" estiverem preenchidos
    Então deve exibir uma mensagem "Cadastro realizado com sucesso!"

  Cenário: E-mail com formato inválido
    Quando eu inserir um e-mail inválido
    Então deve exibir uma mensagem de alerta "E-mail inválido"

  Cenário: Cadastro com campos vazios
    Quando eu for finalizar o cadastro
    E ainda tiver algum campo vazio
    Então deve exibir uma mensagem de alerta "Preencha os campos obrigatórios marcados com "*""
