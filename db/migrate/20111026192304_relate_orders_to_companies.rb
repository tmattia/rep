class RelateOrdersToCompanies < ActiveRecord::Migration
  def change
    change_table :orders do |t|
      t.references :company
    end
  end
end
