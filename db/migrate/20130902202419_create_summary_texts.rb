class CreateSummaryTexts < ActiveRecord::Migration
  def change
    create_table :summary_texts do |t|
      t.text :summary

      t.timestamps
    end
  end
end
