class CreateRamvendors < ActiveRecord::Migration
  def change
    create_table :ramvendors do |t|
      t.string :name

      t.timestamps
    end
  end
end
