class CreateResumePersonals < ActiveRecord::Migration
  def change
    create_table :resume_personals do |t|
      t.string :name
      t.string :city
      t.string :state
      t.string :cell_phone
      t.string :email
      t.string :linkedin

      t.timestamps
    end
  end
end
