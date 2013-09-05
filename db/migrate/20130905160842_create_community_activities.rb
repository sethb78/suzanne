class CreateCommunityActivities < ActiveRecord::Migration
  def change
    create_table :community_activities do |t|
      t.string :activity

      t.timestamps
    end
  end
end
