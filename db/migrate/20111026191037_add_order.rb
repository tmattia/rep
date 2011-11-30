class AddOrder < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.text :payment
      t.text :discount
      t.float :interest, :default => 0
      t.float :comission, :default => 0
      t.text :observations
      t.string :status
      t.timestamps
    end
  end
end
