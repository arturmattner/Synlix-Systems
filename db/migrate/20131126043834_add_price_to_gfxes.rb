class AddPriceToGfxes < ActiveRecord::Migration
  def change
    add_column :gfxes, :price, :decimal
  end
end
