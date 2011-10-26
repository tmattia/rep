class AddProduct < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :code

      t.timestamps
    end
  end
end
