ActiveAdmin.register ResumePersonal do
 index do
    column :city
    column :state
    column :cell_phone
    column :email
    column :linkedin

    default_actions
  end

  form do |f|
    f.inputs "Admin Details" do
      f.input :city
      f.input :state
      f.input :zip
      f.input :cell_phone
      f.input :email
      f.input :linkedin
    end
    f.actions
  end


controller do
    def permitted_params
      params.permit resume_personal: [:city, :state, :zip, :cell_phone, :email, :linkedin]
    end
  end
end

