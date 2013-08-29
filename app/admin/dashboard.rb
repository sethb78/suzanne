ActiveAdmin.register_page "Dashboard" do

  menu :priority => 1, :label => proc{ I18n.t("active_admin.dashboard") }

  content :title => proc{ I18n.t("active_admin.dashboard") } do
    div :class => "blank_slate_container", :id => "dashboard_default_message" do
      span :class => "blank_slate" do
        span I18n.t("active_admin.dashboard_welcome.welcome")
        small I18n.t("active_admin.dashboard_welcome.call_to_action")
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
