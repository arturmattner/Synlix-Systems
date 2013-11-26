class CreateGfxes < ActiveRecord::Migration
  def change
    create_table :gfxes do |t|
      t.string :name
      t.decimal :memory
      t.integer :coreclock
      t.integer :memoryclock
      t.integer :gfxvendor_id

      t.timestamps
    end
  end
end
