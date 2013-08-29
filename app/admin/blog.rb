ActiveAdmin.register Blog do
  index do
    column :title
    column :content

    default_actions
  end

  filter :email

  form do |f|
    f.inputs "Admin Details" do
      f.input :title
      f.input :content

    end
    f.actions
  end
controller do
    def permitted_params
      params.permit blog: [:title, :content]
    end
  end
end
