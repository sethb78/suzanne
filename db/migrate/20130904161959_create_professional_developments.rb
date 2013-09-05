class CreateProfessionalDevelopments < ActiveRecord::Migration
  def change
    create_table :professional_developments do |t|
      t.string :title
      t.date :year

      t.timestamps
    end
  end
end
