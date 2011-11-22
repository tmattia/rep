class AddCarriers < ActiveRecord::Migration
  def change
    create_table :carriers do |t|
      t.string :name, :null => false
    end
  end
end
