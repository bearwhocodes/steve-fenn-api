class Endpoints::ArticlesController < ApplicationController

  def index
    @page = params[:page].present? ? params[:page] : 1
    @articles = Article.unarchived.published.paginate(page: @page)
  end

  def show
    @article = Article.unarchived.published.find(params[:id])
  end
  
end
