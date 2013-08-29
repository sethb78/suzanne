class StaticPagesController < ApplicationController
  def home
    @current_blog = Blog.last
  end
end
