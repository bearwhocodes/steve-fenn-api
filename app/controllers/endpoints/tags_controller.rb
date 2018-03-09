class Endpoints::TagsController < ApplicationController

  def articles
    @page = params[:page].present? ? params[:page] : 1
    articles = Article.tagged_with(params[:id]).unarchived.published
    @article_count = articles.count
    @articles = articles.paginate(page: @page)
  end
  
end