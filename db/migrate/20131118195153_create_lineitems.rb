class CreateLineitems < ActiveRecord::Migration
  def change
    create_table :lineitems do |t|
      t.integer :quantity
      t.decimal :price
      t.integer :order_id
      t.integer :mobo_id
      t.integer :cpu_id
      t.integer :ram_id

      t.timestamps
    end
  end
end
