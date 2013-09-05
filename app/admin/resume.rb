ActiveAdmin.register Resume do

  index do
    column :document
    column :active 
    default_actions
  end

  form do |f|
    f.inputs "Resume Upload" do
      f.input :document
      f.input :active
    end
    f.actions 
  end

  controller do
    def permitted_params
      params.permit resume: [:document, :active]
    end
  end

end
