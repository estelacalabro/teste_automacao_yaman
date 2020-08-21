Dado('que pesquiso por um produto') do
  sleep 10
    @compra.pesquisar_produto.send_keys "BOTA COURO SHOESTOCK CANO CURTO CRAVOS FEMININA - PRETO"
    @compra.selecionar_produto
  end   
  
  Dado('seleciono o tamanho desejado') do
    @compra.selecionar_tamanho
  end
    
  Quando('clico em comprar') do
    @compra.button_comprar.click
    @compra.button_continuar.click
  end
    
  Quando('realizo o login na plataforma') do
    @compra.campo_login.send_keys "estelacalabro@gmail.com"
    @compra.campo_senha.send_keys "759759759"
    @compra.button_acessar.click 
  end
    
  Então('visualizo o produto escolhido no carrinho na tela de pagamento') do
    @compra.check_produto.visible?
  end
