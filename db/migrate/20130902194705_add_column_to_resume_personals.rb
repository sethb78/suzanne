class AddColumnToResumePersonals < ActiveRecord::Migration
  def change
    add_column :resume_personals, :zip, :string
  end
end
