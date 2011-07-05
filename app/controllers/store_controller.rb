class StoreController < ApplicationController
  def index
    @products = Product.all
    @count = increment_counter
  end
end

