ActiveAdmin.register Education do

 index do
    column :description

    default_actions
  end

 
  form do |f|
    f.inputs "Admin Details" do
      f.input :description, as: :html_editor

    end
    f.actions
  end
controller do
    def permitted_params
      params.permit education: [:description]
    end
  end
end

