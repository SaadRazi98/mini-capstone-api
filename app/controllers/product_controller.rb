class ProductController < ApplicationController 

  def index
    @product = Product.all 
    render :index
  end 

  def show
    @product = Product.find_by(id: params[:id])
    render :show
  end 

  def create
    # make a new recipe in the db
    # p params[:title]

    @product = Product.new(
      name: params[:name]
      price: params[:price]
      image_url: params[:image_url]
      description: params[:description]
    )

    if @product.save
      render :show
    else
      render json: {errors: @product.errors.full_messages}, status: :unprocessable_entity
  end 
end