class CreatePraises < ActiveRecord::Migration
  def change
    create_table :praises do |t|
      t.text :content
      t.string :name
      t.string :position

      t.timestamps
    end
  end
end
