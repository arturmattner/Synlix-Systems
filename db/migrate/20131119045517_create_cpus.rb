class CreateCpus < ActiveRecord::Migration
  def change
    create_table :cpus do |t|
      t.string :name
      t.integer :cpuvendor_id
      t.decimal :clock
      t.integer :cores
      t.decimal :price
      t.string :image

      t.timestamps
    end
  end
end
