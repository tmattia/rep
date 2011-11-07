class AddClient < ActiveRecord::Migration
  def change
    create_table :clients do |t|
      t.string :name
      t.string :company_name
      t.string :cnpj
      t.string :email
      t.string :phone
      t.string :fax
      t.string :skype
      t.string :msn
      t.string :street
      t.string :zip_code
      t.string :city
      t.string :state

      t.timestamps
    end
  end
end
