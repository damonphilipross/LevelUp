class Challenge < ApplicationRecord
  belongs_to :user

  validates :detail, presence: true
  validates :start_date, presence: true
  validates :duration, presence: true
  validates :metric_verb, presence: true
end
