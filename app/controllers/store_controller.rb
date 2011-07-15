class StoreController < ApplicationController
  def index
    @products = Product.all
    @cart = current_cart
    @count = increment_counter
  end
end

