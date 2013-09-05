ActiveAdmin.register LeadershipExperienceAndAward do

 index do
    column :title
    column :span, :label => "Dates"
    column :line1
    column :line1
    default_actions
  end


  form do |f|
    f.inputs "Admin Details" do
      f.input :title
      f.input :span, :label => "Dates"
      f.input :line1
      f.input :line2

    end
    f.actions
  end
controller do
    def permitted_params
      params.permit leadership_experience_and_award: [:title, :span, :line1, :line2]
    end
  end
end

