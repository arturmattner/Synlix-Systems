class AddGfxIdToLineitem < ActiveRecord::Migration
  def change
    add_column :lineitems, :gfx_id, :integer
  end
end
