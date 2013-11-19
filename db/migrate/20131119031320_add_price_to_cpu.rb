class AddPriceToCpu < ActiveRecord::Migration
  def change
    add_column :cpus, :price, :decimal
  end
end
