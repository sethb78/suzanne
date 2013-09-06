ActiveAdmin.register_page "Dashboard" do

  menu :priority => 1, :label => proc{ I18n.t("active_admin.dashboard") }

  content :title => proc{ I18n.t("active_admin.dashboard") } do
  #   div :class => "blank_slate_container", :id => "dashboard_default_message" do
  #     span :class => "blank_slate" do
  #       span I18n.t("active_admin.dashboard_welcome.welcome")
  #       small I18n.t("active_admin.dashboard_welcome.call_to_action")
  #     end
  #   end

  div :class => "twenty_five_percent float-left" do
    panel "Admin Users" do
      ul do
        AdminUser.all.each do |user|
          li user.email
        end
        strong link_to("Admin Users Page", admin_admin_users_path)
      end
    end
  end

  div :class => "float-left" do
    panel "Resume Uploads" do
      ul do
          li link_to("edit #{Resume.last.document}", admin_resume_path(Resume.last))
        
      end
    end
  end

  panel "User Updated Resume" do
    ul do
      li link_to(" edit Personal Information", edit_admin_resume_personal_path(ResumePersonal.last))
      li link_to("edit Summary Text", edit_admin_summary_text_path(SummaryText.last))
      li link_to("edit Summary Bullet Points", admin_summary_bullet_points_path)
      li link_to("edit Professional Experience", admin_professional_experiences_path)
      li link_to("edit Leadership Experience & Awards", admin_leadership_experience_and_awards_path)
      li link_to("edit Education", admin_educations_path)
      li link_to("edit Professional Development", admin_professional_developments_path)
      li link_to("edit Community Activities", admin_community_activities_path)
    end
  end

  panel "Blogs" do
    ul do
      Blog.all.each do |blog|
        li link_to(blog.title, edit_admin_blog_path(blog))
      end
        strong link_to("Blogs Index", admin_blogs_path)
    end
  end
    # Here is an example of a simple dashboard with columns and panels.
    #
    # columns do
    # column do
    # panel "Recent Posts" do
    # ul do
    # Post.recent(5).map do |post|
    # li link_to(post.title, admin_post_path(post))
    # end
    # end
    # end
    # end

    # column do
    # panel "Info" do
    # para "Welcome to ActiveAdmin."
    # end
    # end
    # end
  end # content
end