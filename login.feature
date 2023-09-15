            #language: pt

            Funcionalidade: Tela de loginseraw
            Como cliente da EBAC-SHOP
            Quero fazer o login (autenticação)na plataforma
            Para visualizar meus pedidos

            Cenário: Autenticação válida
            Dado que eu acesse a página de autenticação da EBAC-SHOP
            Quando eu digitar o usuário "maria@ebacshop.com.br"
            E a senha "senha102"
            Então deve ser direcionado para a tela de checkout

            Cenário: Autenticação inválida
            Dado que eu acesse a página de autenticação da EBAC-SHOP
            Quando eu digitar o usuário "mariaaa@ebacshop.com.br"
            E a senha "senha102"
            Então deve exibir uma mensagem de alerta: "usuário ou senha inválidos"

            Esquema do Cenário: Autenticar multiplos usuário
            Quando eu digitar o <usuario>
            E a <senha>
            Então deve exibir a <mensagem> de sucesso

            Exemplos:
            | usuario                   | senha      | mensagem                                     |
            | "maria@ebacshop.com.br"   | "senha102" | deve ser direcionado para a tela de checkout |
            | "mariaaa@ebacshop.com.br" | "senha102" | "usuário ou senha inválidos"                 |


