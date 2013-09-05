ActiveAdmin.register_page "Dashboard" do

  menu :priority => 1, :label => proc{ I18n.t("active_admin.dashboard") }

  content :title => proc{ I18n.t("active_admin.dashboard") } do

  section  link_to "Edit Personal Info", edit_admin_resume_personal_path(ResumePersonal.last.id) do
    table_for ResumePersonal.all do
    column :city
    column :state
    column :zip
    column :cell_phone
    column :email
    column :linkedin
    end
end

  section link_to "Edit Summary Text", edit_admin_summary_text_path(SummaryText.last.id) do
    table_for SummaryText.all do
      column :summary 
    end
  end

  section link_to "Summary Bullet Points", admin_summary_bullet_points_path do
  table_for SummaryBulletPoint.all.each do
    column :feature do |feature|
        link_to feature.feature, edit_admin_summary_bullet_point_path(feature)
      end
  end
end

  section link_to "Professional Expereince", admin_professional_experiences_path do
  table_for ProfessionalExperience.all.each do
    column :title do |job|
        link_to job.title, edit_admin_professional_experience_path(job)
      end
  end
end

  section link_to "Leadership and Experience Awards", admin_leadership_experience_and_awards_path do
  table_for LeadershipExperienceAndAward.all.each do
    column :title do |entry|
        link_to entry.title, edit_admin_leadership_experience_and_award_path(entry)
      end
  end
end

section link_to "Education", admin_educations_path do
  table_for Education.all.each do
    column :description do |entry|
        link_to entry.description, edit_admin_education_path(entry)
      end
  end
end

section link_to "Professional Development", admin_professional_developments_path do
  table_for ProfessionalDevelopment.all.each do
    column :title do |entry|
        link_to entry.title, edit_admin_professional_development_path(entry)
      end
  end
end

  section "Recent Blogs" do
    table_for Blog.order("updated_at desc").limit(5) do
      column :name do |blog|
        link_to blog.title, admin_blog_path(blog)
      end
      column :updated_at
    end
    strong { link_to "View All Blogs", admin_blogs_path }
       div :class => "clearfix"
        strong { link_to "Add Blog", new_admin_blog_path}


  end




  end # content
end
