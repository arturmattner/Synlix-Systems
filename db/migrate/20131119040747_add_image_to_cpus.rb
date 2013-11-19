class AddImageToCpus < ActiveRecord::Migration
  def change
    add_column :cpus, :image, :string
  end
end
