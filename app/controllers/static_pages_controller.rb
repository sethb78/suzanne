class StaticPagesController < ApplicationController
  def home
    @current_blog = Blog.last
  end

  def test
  end
end
