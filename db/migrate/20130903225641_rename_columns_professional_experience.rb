class RenameColumnsProfessionalExperience < ActiveRecord::Migration
  def change
        rename_column :professional_experiences, :start, :job_start
        rename_column :professional_experiences, :end, :job_end

  end
end
