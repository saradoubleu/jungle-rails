class ProductsController < ApplicationController

  def index
    @products = Product.all.order(created_at: :desc)
  end

  def show
    @product = Product.find params[:id]
  end

  # def display
  #   if Product.quantity == 0
  #     render 'sold_out'
  #   else
  #   end
  # end
end
