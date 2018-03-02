json.(@article, :id, :title, :summary, :published_at, :reading_time)
json.tags @article.tags.map(&:name) if @article.tags.any?
json.image @article.image_url if @article.image.present?
json.content @article.content
json.related_articles @article.related_articles, :id, :title, :summary, :published_at, :reading_time, :image_url
