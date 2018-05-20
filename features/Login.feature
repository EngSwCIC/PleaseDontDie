#language: pt
@login
Funcionalidade: Login de usuário

    Como usuário quero utilizar meu e-mail e senha cadastrados para fazer LogIn.

Cenário: Log in de usuário
    Dado que estou na home page
    E e o seguinte usuário está cadastrado:
		| Email address         | teste@teste.com |
		| Password              | senha1234       |
		| Password confirmation | senha1234       |
    Quando cliclo em "Log In"
    E preencho com os seguintes dados:
		| Email address         | teste@teste.com |
		| Password              | senha1234       |
	Então 

