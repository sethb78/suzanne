class CreateResumes < ActiveRecord::Migration
  def change
    create_table :resumes do |t|
      t.string :document
      t.boolean :active, default: false

      t.timestamps
    end
  end
end
