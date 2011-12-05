class AddActivities < ActiveRecord::Migration
  def change
    create_table :activities do |t|
      t.string :type, :null => false
      t.string :target_id, :null => false
      t.string :target_type, :null => false
      t.text :data
      t.timestamps
    end
  end
end
