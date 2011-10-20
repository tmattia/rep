class AddEmailToCompany < ActiveRecord::Migration
  def change
    change_table :companies do |t|
      t.string :email
    end
  end
end
