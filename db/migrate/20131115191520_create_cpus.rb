class CreateCpus < ActiveRecord::Migration
  def change
    create_table :cpus do |t|
      t.string :name
      t.string :vendor
      t.decimal :clock
      t.integer :cores

      t.timestamps
    end
  end
end
