class AddImageToGfxes < ActiveRecord::Migration
  def change
    add_column :gfxes, :image, :string
  end
end
