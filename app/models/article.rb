class Article < ApplicationRecord

  # Acts as
  acts_as_taggable

  # Callbacks
  before_validation :set_reading_time

  # Uploaders
  mount_uploader :image, ArticleImageUploader

  # Validations
  validates :title, :summary, :reading_time, :content, :published_at, presence: true

private

  def set_reading_time
    content = ActionView::Base.full_sanitizer.sanitize(self.content)
    self.reading_time = content.reading_time format: :approx
  end

end
