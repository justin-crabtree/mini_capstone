class Api::ProductsController < ApplicationController

  def products_action
    @products = Product.all 
    render 'product.json.jb'
  end

end
