class RelateProductsToCompanies < ActiveRecord::Migration
  def change
    change_table :products do |t|
      t.references :company
    end
  end
end
