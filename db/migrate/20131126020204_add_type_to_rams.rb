class AddTypeToRams < ActiveRecord::Migration
  def change
    add_column :rams, :type, :string
  end
end
