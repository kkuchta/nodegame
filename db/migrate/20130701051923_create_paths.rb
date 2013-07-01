class CreatePaths < ActiveRecord::Migration
  def change
    create_table :paths do |t|
      t.integer :startNodeID
      t.integer :endNodeID
      t.string :state
      t.string :startDescription
      t.string :endDescription

      t.timestamps
    end
  end
end
