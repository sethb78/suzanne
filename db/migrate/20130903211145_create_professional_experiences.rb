class CreateProfessionalExperiences < ActiveRecord::Migration
  def change
    create_table :professional_experiences do |t|
      t.string :title
      t.date :start
      t.date :end
      t.text :summary
      t.string :bullet_point_1
      t.string :bullet_point_2
      t.string :bullet_point_3
      t.string :bullet_point_4
      t.string :bullet_point_5

      t.timestamps
    end
  end
end
