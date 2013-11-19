class AddImageToRams < ActiveRecord::Migration
  def change
    add_column :rams, :image, :string
  end
end
