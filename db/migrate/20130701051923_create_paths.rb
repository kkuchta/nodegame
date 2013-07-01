class CreatePaths < ActiveRecord::Migration
  def change
    create_table :paths do |t|
      t.integer :start_node_id
      t.integer :end_node_id
      t.string :state
      t.string :start_description
      t.string :end_description

      t.timestamps
    end
  end
end
