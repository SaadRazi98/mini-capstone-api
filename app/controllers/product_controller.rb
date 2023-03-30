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
  end 
end 
