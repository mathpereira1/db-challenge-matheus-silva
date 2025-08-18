# Bike Store Inc - Base de Dados

## Descrição

O projeto Bike Store Inc - Base de Dados tem como objetivo realizar 5 queries no banco de dados que cumpram os seguintes objetivos:

- Listar todos os Clientes que não tenham realizado uma compra.
- Listar os produtos que não tenham sido comprados.
- Listar os produtos sem estoque.
- Agrupar a quantidade de vendas que uma determinada Marca por Loja.
- Listar os funcionários que não estejam relacionados a um pedido.

## Tecnologia utilizada

- As queries estão na linguagem T-SQL.

## Instalação/Utilização

- O projeto não possuí instalação
- São apenas scripts SQLs que podem ser utilizados com Dapper ou convertidos em LINQ para implementação com EF.

> This is a challenge by [Coodesh](https://coodesh.com/)

## Desafios encontrados e oportunidades de melhoria

- Algumas melhorias foram pensadas que podem ser implementadas com mais contexto, por exemplo:  

  - Qual o critério de clientes que não realizaram uma compra ?
    - Poderíamos filtrar por clientes com uma ordem com status pendente por mais de algumas horas, simbolizando pedidos não finalizados/ainda no carrinho.
  - Especificação de produtos não comprados
    - Somar no estoque produtos que fazem parte de ordens canceladas, por exemplo.
