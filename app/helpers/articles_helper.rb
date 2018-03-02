module ArticlesHelper

  def archived_icon(article)
    content_tag(:i, "", class: "fa fa-2x #{article.archived ? 'fa-check text-warning' : 'fa-times text-primary'}")
  end

end
