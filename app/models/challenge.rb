class Challenge < ApplicationRecord
  belongs_to :user

  validates :title, presence: true
  validates :detail, presence: true
  validates :start_date, presence: true
  validates :duration, presence: true
  validates :metric_verb, presence: true
  validates :metric_value, presence: true
  validates :metric_frequency, presence: true
  validates :metric_operator, presence: true
  validates :location, presence: true

  Tag = ["fitness", "health", "beauty", "technology", "diet", "knowledge", "wellness", "wealth", "mindfulness", "social"]
   include PgSearch
  pg_search_scope :search_by_tag,
    against: [:tag],
    using: {
      tsearch: { prefix: true }
    }
end
