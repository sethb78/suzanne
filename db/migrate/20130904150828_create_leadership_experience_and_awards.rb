class CreateLeadershipExperienceAndAwards < ActiveRecord::Migration
  def change
    create_table :leadership_experience_and_awards do |t|
      t.string :title
      t.string :span
      t.string :line1
      t.string :line2

      t.timestamps
    end
  end
end
