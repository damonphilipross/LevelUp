class Photo < ApplicationRecord
  belongs_to :challenge

  validates :photo_url, presence: true
end
