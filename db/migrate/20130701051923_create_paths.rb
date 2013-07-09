class CreatePaths < ActiveRecord::Migration
  def change
    create_table :paths do |t|
      t.belongs_to :start_node
      t.belongs_to :end_node
      t.string :state, default: 'open'
      t.string :start_label
      t.text :start_description
      t.text :end_description

      t.timestamps
    end
  end
end
