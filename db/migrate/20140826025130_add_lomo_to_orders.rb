class AddLomoToOrders < ActiveRecord::Migration
  def change
    add_column :orders, :lomo, :boolean
    add_column :orders, :lomo_units, :integer
  end
end
