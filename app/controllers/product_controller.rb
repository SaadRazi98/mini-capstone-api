class ProductController < ApplicationController 

  def index
    @product = Product.all 
    render template: "product/index"
  end 

  def show
    @product = Product.find_by(id: params[:id])
    render :show
  end 

  def create
    # make a new recipe in the db
    # p params[:title]

    @product = Product.new(
      name: params[:name],
      price: params[:price]
      image_url: params[:image_url]
      description: params[:description]
    )
    @product.save
    render :show
  end 
end 
