#language: pt 

Funcionalidade: Login na plataforma
Como cliente da EBAC SHOP
Quero fazer o login (autenticação) na plataforma 
Para visualizar os meu pedidos

Contexto:
Dado que eu acesse a página de autenticação do portal EBAC SHOP

Cenário: Após autenticação válida ser direcionado para tela de checkout 
Quando eu digitar o usuário "aline@ebac.com.br"
E senha "aline123"
Então devo ser direcionado para a tela de "Checkout"

Esquema do Cenário: Usuário inexistente 
Quando eu digitar o usuário "joseninguem@ebac.com.br"
E a senha "kkkkk"
Então deve exibir uma mensagem de alerta "Usuário ou senha Inválidos"



