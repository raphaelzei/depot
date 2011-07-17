class Order < ActiveRecord::Base
  has_many :line_items, :dependent => :destroy
  belongs_to :pay_type

  #PAYMENT_TYPES = ["Check","Credit card","Purchase order"]

  validates :name, :address, :email, :pay_type, :presence => true

  validates_associated :pay_type
  validates_inclusion_of :pay_type_id, :in => PayType.find(:all).map { |pt| pt.id }

  def add_line_items_from_cart(cart)
    cart.line_items.each do |item|
      item.cart_id = nil
      line_items << item
    end
  end
end

