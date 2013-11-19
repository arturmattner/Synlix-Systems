class AddPriceToRam < ActiveRecord::Migration
  def change
    add_column :rams, :price, :decimal
  end
end
