class AddPriorityToPraiseFor < ActiveRecord::Migration
  def change
    add_column :praises, :priority, :integer, unique: true
  end
end
