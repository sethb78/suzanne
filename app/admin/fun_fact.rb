ActiveAdmin.register FunFact do
 index do
    column :fact

    default_actions
  end

 
  form do |f|
    f.inputs "Fun Facts" do
      f.input :fact, as: :html_editor

    end
    f.actions
  end
controller do
    def permitted_params
      params.permit fun_fact: [:fact]
    end
  end
end

