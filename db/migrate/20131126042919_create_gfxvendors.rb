class CreateGfxvendors < ActiveRecord::Migration
  def change
    create_table :gfxvendors do |t|
      t.string :name

      t.timestamps
    end
  end
end
