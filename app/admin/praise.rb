ActiveAdmin.register Praise do
 index do
    column :content
    column :name
    column :position

    default_actions
  end

  form do |f|
    f.inputs "Praise Details" do
      f.input :content
      f.input :name
      f.input :position
      f.input :photo_path
    end
    f.actions
  end


controller do
    def permitted_params
      params.permit praise: [:content, :name, :position, :photo_path]
    end
  end
end


