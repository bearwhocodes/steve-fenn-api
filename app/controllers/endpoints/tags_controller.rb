class Endpoints::TagsController < ApplicationController

  def articles
    @page = params[:page].present? ? params[:page] : 1
    @articles = Article.tagged_with(params[:id]).unarchived.published.paginate(page: @page) if params[:id]
  end
  
end