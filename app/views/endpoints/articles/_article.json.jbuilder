json.(article, :id, :title, :summary, :published_at, :reading_time)
json.tags article.tags.map(&:name) if article.tags.any?
json.image article.image_url if article.image.present?
