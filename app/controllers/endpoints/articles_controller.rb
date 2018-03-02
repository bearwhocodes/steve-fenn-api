class Endpoints::ArticlesController < ApplicationController

  def index
    @articles = Article.unarchived.published.all
  end

  def show
    @article = Article.unarchived.published.find(params[:id])
  end
  
end
