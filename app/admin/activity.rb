ActiveAdmin.register CommunityActivity do
  index do
    column :activity 
    default_actions
  end

  form do |f|
    f.inputs "Community Activities" do
      f.input :activity
    end
    f.actions 
  end

  controller do
    def permitted_params
      params.permit community_activity: [:activity]
      end
    end

end
