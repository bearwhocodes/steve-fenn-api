class Endpoints::TagsController < ApplicationController

  def articles
    @articles = Article.tagged_with(params[:id]).unarchived.published.all if params[:id]
  end
  
end