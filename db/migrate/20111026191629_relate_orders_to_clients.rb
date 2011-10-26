class RelateOrdersToClients < ActiveRecord::Migration
  def change
    change_table :orders do |t|
      t.references :client
    end
  end
end
