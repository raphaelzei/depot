class AddPayTypeIdToOrder < ActiveRecord::Migration
  def self.up
    remove_column :orders, :pay_type
    add_column :orders, :pay_type_id, :integer
  end

  def self.down
    remove_column :orders, :pay_type_id
  end
end

