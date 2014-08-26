class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.boolean :leg5
      t.boolean :leg6
      t.boolean :leg7
      t.boolean :desh
      t.integer :units
      t.string :name
      t.string :company
      t.string :city
      t.string :phone
      t.string :email
      t.string :payment

      t.timestamps
    end
  end
end
