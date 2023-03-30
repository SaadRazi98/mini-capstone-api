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

    @product = Product.new(
      name: "Kang the Conqueror Action Figure", price: 25, image_url: "https://cdn.shopify.com/s/files/1/0169/6995/7440/products/F6575_PROD_MVL_AMN_LEGENDS_FROST_3_69161_Black_Online_2000SQ_1500x.jpg?v=1675438086", description: "Kang is the main villain for the MCU. This action figure he has his famous green and purple suit with his blue helmet shield."
    )
    @product.save
    render :show
  end 

  def update 
    @product = Product.find_by(
      name = params[:name]
      price = params[:price]
      image_url = params[:image_url]
      description = params[:description]
    )
    @product.save
    render :show
  end 

  def destroy
    @product = Product.find_by(id: params [:id])
    @product.destroy
    render json:{message: "Product has been successfully removed"}
  end 

end 
