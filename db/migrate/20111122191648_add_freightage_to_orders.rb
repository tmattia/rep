class AddFreightageToOrders < ActiveRecord::Migration
  def change
    change_table :orders do |t|
      t.string :type_of_freight, :limit => 3
      t.references :carrier
    end
  end
end
