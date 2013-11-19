class CreateRams < ActiveRecord::Migration
  def change
    create_table :rams do |t|
      t.string :name
      t.integer :ramvendor_id
      t.string :clocks
      t.integer :speed
      t.decimal :price
      t.string :image

      t.timestamps
    end
  end
end
