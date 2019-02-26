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
end
