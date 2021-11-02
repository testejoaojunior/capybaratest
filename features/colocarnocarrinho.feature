#language: pt

Funcionalidade: Colocar produtos no carrinho
   Enquanto usuário acessa a loja
   Avaliar se produtos estão sendo colocados no carrinho

   Cenario: inserir produto A na loja
      Dado que usuario esteja na página
      Quando seleciona um produto A
      E seleciona a opção de tamanho A
      E seleciona a opção de cor A
      E clica em comprar
      Entao o sistema insere o produto A no carrinho 

      
   Cenario: inserir produto B na loja
      Dado que usuario esteja na página
      Quando seleciona um produto B
      E seleciona a opção de tamanho B
      E seleciona a opção de cor B
      E clica em comprar
      Entao o sistema insere o produto B no carrinho


@melhoria
    Esquema do Cenario: Inserir produtos na loja
      
      Dado que usuario esteja na página
      Quando seleciona um <produto>
      E seleciona a opção de <tamanho>
      E seleciona a <cor>
      E clica em comprar
      Entao o sistema insere o <resultado> no carrinho


    Exemplos:

    | produto | tamanho | cor | resultado |
    |  '/html/body/div[2]/div[5]/section/div/div/main/div[4]/div/div/div/div/div/div/div/div/div/div/div[1]/div/div/div[1]/div/div[2]/div/div/h3/a'  | '.button-variable-item-S' |  '.button-variable-item-Red'     | '#cart > div:nth-child(2) > div:nth-child(1) > div:nth-child(1) > div:nth-child(1) > div:nth-child(1) > ul:nth-child(1) > li:nth-child(1) > div:nth-child(2) > a:nth-child(2)'  |
    | '/html/body/div[2]/div[5]/section/div/div/main/div[4]/div/div/div/div/div/div/div/div/div/div/div[1]/div/div/div[3]/div/div[2]/div/div/h3/a' | '.button-variable-item-M' | '.button-variable-item-Gray' | 'Josie Yoga Jacket - M, Gray' |