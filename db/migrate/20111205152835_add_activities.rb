class AddActivities < ActiveRecord::Migration
  def change
    create_table :activities do |t|
      t.string :activity_type, :null => false
      t.text :data
      t.references :target, :polymorphic => true
      t.timestamps
    end
  end
end
