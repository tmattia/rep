class AddAddressAndContactFieldsToCompany < ActiveRecord::Migration
  def change
    change_table :companies do |t|
      t.string :company_name
      t.string :cnpj
      t.string :street
      t.string :zip_code
      t.string :city
      t.string :state
      t.string :phone
      t.string :fax
      t.string :msn
      t.string :skype
    end
  end
end
