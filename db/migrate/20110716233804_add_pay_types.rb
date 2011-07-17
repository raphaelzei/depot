class AddPayTypes < ActiveRecord::Migration
  def self.up
    PayType.delete_all
    PayType.create(:name => 'Check')
    PayType.create(:name => 'Credit Card')
    PayType.create(:name => 'Purchase Order')
  end

  def self.down
    PayType.delete_all
  end
end

