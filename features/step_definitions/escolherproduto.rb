Dado('que usuario esteja na página') do
    visit '/'
  end
  
  Quando('seleciona um produto A') do
    
    find(:xpath, '/html/body/div[2]/div[5]/section/div/div/main/div[4]/div/div/div/div/div/div/div/div/div/div/div[1]/div/div/div[1]/div/div[2]/div/div/h3/a').click
  end
  
  Quando('seleciona a opção de tamanho A') do
    find(:css, '.button-variable-item-S').click
  end
  
  Quando('seleciona a opção de cor A') do
    find(:css, '.button-variable-item-Red').click
  end
  
  
  Quando('clica em comprar') do
    find(:css, '.single_add_to_cart_button').click
  end
  
  Entao('o sistema insere o produto A no carrinho') do
    find(:css, 'span.mini-cart-items:nth-child(3)').click
    find(:css, '#cart > div:nth-child(2) > div:nth-child(1) > div:nth-child(1) > div:nth-child(1) > div:nth-child(1) > ul:nth-child(1) > li:nth-child(1) > div:nth-child(2) > a:nth-child(2)')
  end




    
  Quando('seleciona um produto B') do
    
    find(:xpath, '/html/body/div[2]/div[5]/section/div/div/main/div[4]/div/div/div/div/div/div/div/div/div/div/div[1]/div/div/div[3]/div/div[2]/div/div/h3/a').click
  end
  
  Quando('seleciona a opção de tamanho B') do
    find(:css, '.button-variable-item-M').click
  end
  
  Quando('seleciona a opção de cor B') do
    find(:css, '.button-variable-item-Gray').click
  end
  
  
  Entao('o sistema insere o produto B no carrinho') do
    find(:css, 'span.mini-cart-items:nth-child(3)').click
    find('a', text: 'Josie Yoga Jacket - M, Gray')
  end


  Quando('seleciona um {string}') do |produto|
    find(:xpath, produto).click
  end
  
  Quando('seleciona a opção de {string}') do |tamanho|
    find(:css, tamanho).click
  end

  
  Quando('seleciona a {string}') do |cor|
    find(:css, cor).click
  end
  

  Entao('o sistema insere o {string} no carrinho') do |resultado|
    find(:css, 'span.mini-cart-items:nth-child(3)').click
  end
  