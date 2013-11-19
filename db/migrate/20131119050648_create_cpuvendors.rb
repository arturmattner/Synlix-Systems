class CreateCpuvendors < ActiveRecord::Migration
  def change
    create_table :cpuvendors do |t|
      t.string :name

      t.timestamps
    end
  end
end
