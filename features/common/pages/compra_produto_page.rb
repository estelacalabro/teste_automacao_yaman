# MAPEAMENTO DA PAGINA PRINCIPAL DO SITE
class CompraScreen < SitePrism::Page

    include BaseScreen
    include Helpers
  

    element :pesquisar_produto, '#search-input' 
    elements :produto_escolhido, '.price-sale'
    element :tamanho_desejado, '.product-item'
    element :button_comprar, '#buy-button-now'
    element :button_continuar, '.btn.btn--primary.btn--block'
    element :campo_login, '#username'
    element :campo_senha, '#password'
    element :button_acessar, '#login-button'
    element :check_produto, '.ns-w8.item-title'


    def selecionar_produto
        a= all('.price-sale')
        a.count
        a[2].click 
    end    

    def selecionar_tamanho
        b = all('.product-item')
        b.count
        b[4].click
    end    

end 