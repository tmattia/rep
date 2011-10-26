class AddClient < ActiveRecord::Migration
  def change
    create_table :clients do |t|
      t.string :corporate_name

      t.timestamps
    end
  end
end
