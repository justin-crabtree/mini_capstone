class Api::ProductsController < ApplicationController

  def index
    @products = Product.all 
    render 'product.json.jb'
  end

  def show
    @product = Product.find_by(id: params[:id])
    render 'show.json.jb'
  end

  def create
    @product = Product.new(
      id: params[:id], 
      name: params[:name], 
      price: params[:price].to_i, 
      image_url: params[:image_url], 
      description: params[:description]
      )
    if @product.save
      render 'show.json.jb'
    else 
      render json: {errors: @product.errors.full_messages}, status: :unprocessable_entity
    end
  end

  def update
    @product = Product.find_by(id: params[:id])

    @product.name = params[:name] || @product.name
    @product.price = params[:price] || @product.price
    @product.image_url = params[:image_url] || @product.image_url
    @product.description = params[:description] || @product.description

    if @product.save
      render 'show.json.jb'
    else 
      render json: {errors: @product.errors.full_messages}, status: :unprocessable_entity
    end
  end

  def destroy
    product = Product.find_by(id: params[:id])
    product.destroy
    render json: {message: "This product has been deleted"}
  end

end

