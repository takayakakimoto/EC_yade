class ProductsController < ApplicationController
  def index
    @Products = Product.all
  end

  def show
  end

  def new
    @Product = Product.new
  end
end
