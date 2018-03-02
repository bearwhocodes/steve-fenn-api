class Article < ApplicationRecord

  # Relationships
  has_and_belongs_to_many :related_articles, class_name: 'Article', join_table: 'related_articles', foreign_key: 'article_id', association_foreign_key: 'related_id'

  # Acts as
  acts_as_taggable

  # Callbacks
  before_validation :set_reading_time

  # Uploaders
  mount_uploader :image, ArticleImageUploader

  # Validations
  validates :title, :summary, :reading_time, :content, :published_at, presence: true

  # Scopes
  scope :unarchived, -> { where(archived: false) }
  scope :published, -> { where("published_at <= ?", Time.now)}

  # Methods
  def to_s
    title
  end

private

  def set_reading_time
    content = ActionView::Base.full_sanitizer.sanitize(self.content)
    self.reading_time = content.reading_time format: :approx
  end

end
