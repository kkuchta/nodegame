class CreateNodes < ActiveRecord::Migration
  def change
    create_table :nodes do |t|
      t.text :description

      t.timestamps
    end
  end
end
