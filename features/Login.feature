#language: pt
@login

Funcionalidade: Login de usuário

    Como usuário quero utilizar meu e-mail e senha cadastrados para fazer LogIn.

Cenário: Log in de usuário
    Dado que estou na home page
    E e o seguinte usuário está cadastrado:
		| email                 | teste@teste.com |
		| password              | senha1234       |
		| password_confirmation | senha1234       |
    Quando cliclo em "Log in"
    E preencho com os seguintes dados:
		| Email address         | teste@teste.com |
		| Password              | senha1234       |
	Então aparece uma aviso que o login foi completado
