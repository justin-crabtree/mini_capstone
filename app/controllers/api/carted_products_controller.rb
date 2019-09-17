class Api::CartedProductsController < ApplicationController

  before_action :authenticate_user

  def index
    @carted_products = CartedProduct.all
    render 'index.json.jb' 
  end

  def create
    @carted_product = CartedProduct.new(
      user_id: current_user.id, 
      product_id: params[:product_id], 
      quantity: params[:quantity], 
      status: "carted"
      )
    @carted_product.save
    render 'index.json.jb'
  end



end
