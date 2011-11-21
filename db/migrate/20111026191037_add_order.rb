class AddOrder < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.text :payment
      t.text :discount
      t.float :interest
      t.float :comission
      t.text :observations
      t.timestamps
    end
  end
end
