#language: pt

Funcionalidade: configurar produto
Como cliente da EBAC-SHOP
Quero configurar meu produto de acordo com meu tamanho e gosto
E escolher a quantidade
Para depois inserir no carrinho

Cenário: configuração de produto
Dado que eu acesse a página de produtos da EBAC-SHOP
Quando seleciono a cor "azul"
E seleciono o tamanho "M"
E defino a quantidade como "2"
E adiciono o produto ao carrinho
Então vejo o produto no meu carrinho 
E o carrinho contém 2 itens
E o total no carrinho é atualizado corretamente

Contexto:
Dado que eu acesse a página de produtos da EBAC-SHOP

Cenário: configuração de produto
Quando seleciono a cor "azul"
E seleciono o tamanho "M"
E não defino a quantidade
E adiciono o produto ao carrinho
Então deve exibir uma mensagem de alerta: "campo quantidade obrigatório"

Cenário: configuração de produto
Quando seleciono a cor "azul"
E não seleciono o tamanho 
E defino a quantidade "2"
E adiciono o produto ao carrinho
Então deve exibir uma mensagem de alerta: "campo tamanho obrigatório"

Cenário: configuração de produto
Quando não seleciono a cor
E seleciono o tamanho "M"
E defino a quantidade "2"
E adiciono o produto ao carrinho
Então deve exibir uma mensagem de alerta: "campo cor obrigatório"

Cenário: configuração de multiplos produtos
Dado que eu acesse página de produtos da EBAC-SHOP
Quando seleciono a cor "verde"
E seleciono o tamanho "P"
E defino a quantidade como "5"
e adiciono o produto ao carrinho 
Quando seleciono a cor "amarelo"
E seleciono o tamanho "GG"
E defino a quantidade como "1"
E adiciono o produto ao carrinho 
Então vejo os produtos no meu carrinho 
E o carrinho contém 6 itens
E o total no carrinho é atualizado corretamente
E não posso adicionar mais de 10 produtos ao carrinho

Cenário: atualizar carrinho
Dado que eu acesse a página carrinho da EBAC-SHOP
Quando eu clicar no botão "limpar"
Então deve voltar ao estado original



