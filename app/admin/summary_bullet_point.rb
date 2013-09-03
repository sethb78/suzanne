ActiveAdmin.register SummaryBulletPoint do
  index do
    column :feature
    default_actions
  end

  form do |f|
    f.inputs "Summary Bullet Points" do
      f.input :feature
    end
    f.actions
  end

  controller do 
    def permitted_params
      params.permit summary_bullet_point: [:feature]
    end
  end
end
