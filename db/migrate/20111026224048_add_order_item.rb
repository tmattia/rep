class AddOrderItem < ActiveRecord::Migration
  def change
    create_table :order_items do |t|
      t.references :order, :null => false
      t.references :product, :null => false
      t.integer :quantity, :null => false
      t.float :unit_price, :null => false
      t.string :color
    end
  end
end
