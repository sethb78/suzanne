class CreateEducations < ActiveRecord::Migration
  def change
    create_table :educations do |t|
      t.text :description

      t.timestamps
    end
  end
end
