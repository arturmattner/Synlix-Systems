class CreateRams < ActiveRecord::Migration
  def change
    create_table :rams do |t|
      t.string :name
      t.string :vendor
      t.integer :clocks
      t.integer :speed

      t.timestamps
    end
  end
end
