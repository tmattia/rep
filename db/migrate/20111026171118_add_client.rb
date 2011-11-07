class AddClient < ActiveRecord::Migration
  def change
    create_table :clients do |t|
      t.string :company_name
      t.string :cnpj

      t.timestamps
    end
  end
end
