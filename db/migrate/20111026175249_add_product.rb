class AddProduct < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :code
      t.text :description

      t.timestamps
    end
  end
end
