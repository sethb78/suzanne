ActiveAdmin.register ProfessionalExperience do

 index do
    column :title
    column :job_start
    column :job_end
    column :summary
    column :bullet_point_1
    column :bullet_point_2
    column :bullet_point_3
    column :bullet_point_4
    column :bullet_point_5
    default_actions
  end


  form do |f|
    f.inputs "Admin Details" do
      f.input :title
      f.input :job_start, :order => [:year],:start_year => 2000 
      f.input :job_end, :order => [:year],:start_year => 2000 
      f.input :summary, :label => "Summary (optional)"
      f.input  :bullet_point_1,  :label => "Bullet Point (optional)"
      f.input :bullet_point_2,  :label => "Bullet Point (optional)"
      f.input :bullet_point_3,  :label => "Bullet Point (optional)"
      f.input :bullet_point_4,  :label => "Bullet Point (optional)"
      f.input :bullet_point_5,  :label => "Bullet Point (optional)"

    end
    f.actions
  end
controller do
    def permitted_params
      params.permit professional_experience: [:title, :job_start, :job_end, :summary, :bullet_point_1, :bullet_point_2, :bullet_point_3,
        :bullet_point_4, :bullet_point_5]
    end
  end
end
