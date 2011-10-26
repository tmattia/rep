class AddOrderItem < ActiveRecord::Migration
  def change
    create_table :order_items do |t|
      t.references :order
      t.references :product
      t.integer :quantity
      t.float :unit_price
    end
  end
end
