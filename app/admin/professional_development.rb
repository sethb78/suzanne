ActiveAdmin.register ProfessionalDevelopment do

index do 
  column :title
  column :year
  default_actions
end

form do |f|
  f.inputs "Professional Developments" do
    f.input :title
    f.input :year, :order => [:year], :start_year => 2000
  end
  f.actions
end

controller do
  def permitted_params
    params.permit professional_development: [:title, :year]
  end
end
end
