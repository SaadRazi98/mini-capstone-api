class ProductController < ApplicationController 

  def index
    @product = Product.all 
    render template: "product/index"
end
