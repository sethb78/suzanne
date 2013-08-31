class BlogsController < ApplicationController

  def index
  @search = Blog.search(params[:q])
  @blogs = @search.result(distinct: true).order('created_at DESC').paginate(:page => params[:page]).per_page(10)
end

def show
  @blog=Blog.find_by(id: params[:id])
end

end



