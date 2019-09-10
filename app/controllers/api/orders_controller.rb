class Api::OrdersController < ApplicationController

  def create
    @order = Order.create(
      user_id: current_user.id, 
      product_id: params[:product_id], 
      quantity: params[:quantity], 
      )
    render 'show.json.jb'
  end

end
