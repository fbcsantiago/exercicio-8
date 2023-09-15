            #language: pt

            Funcionalidade: Tela de cadastro
            Como cliente da EBAC-SHOP
            Quero concluir meu cadastro
            Para finalizar minha compra

            Cenário: Dados obrigatórios
            Dado que acesse a página de checkout
            Quando preencher todos os campos que estão marcados com asteriscos acerto o campo "Telefone"
            Então vejo uma mensagem de alerta "campos obrigatório"

            Cenário: Formato de email inválido
            Dado que acesse a página de checkout
            Quando digitar o email "maria@gmail.com.br"
            Então deve inserir uma mensagem de erro " email inválido"

            Cenário: Campos vazios
            Dado que acesse a página de checkout
            Quando não preencher os campos marcados com asteristicos
            Então deve exibir uma mensagem de alerta "* campos obrigatórios não preenchidos"

            Esquema do Cenário: Cadastrar multiplos usuários
            Quando eu digitar os <dados pessoais>
            E apertar o botão <checkout>
            Então deve exibir a <mensagem> de sucesso

            Exemplos:
            | dados pessoais      | checkout | mensagem       |
            | "maria@gmail.com.br | checkout | email inválido |