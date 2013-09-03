class CreateSummaryBulletPoints < ActiveRecord::Migration
  def change
    create_table :summary_bullet_points do |t|
      t.string :feature

      t.timestamps
    end
  end
end
