class Api::ProductsController < ApplicationController

  before_action :authenticate_admin, except: [:index, :show]

  def index
    @products = Product.all

    if params[:search]
      @products = @products.where("name iLIKE ?", "%#{params[:search]}%")
    else
      @products = @products.order(:id)
    end

    if params[:is_discounted?]
      @products = @products.where("price < ?", 60)
    end 

    if params[:category]
      category = Category.find_by("name iLike ?", params[:category])
      @products = category.products
    end

    render 'index.json.jb'
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

