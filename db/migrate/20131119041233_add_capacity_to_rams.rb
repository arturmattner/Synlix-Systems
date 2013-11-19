class AddCapacityToRams < ActiveRecord::Migration
  def change
    add_column :rams, :capacity, :integer
  end
end
