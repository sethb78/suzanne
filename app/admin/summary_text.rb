ActiveAdmin.register SummaryText do
  index do 
    column :summary 
    default_actions

  end

  form do |f|
    f.inputs "Summary Text" do
      f.input :summary
    end
    f.actions
  end

  controller do
    def permitted_params
      params.permit summary_text: [:summary]
    end
  end


end
