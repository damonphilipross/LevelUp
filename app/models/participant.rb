class Participant < ApplicationRecord
  belongs_to :follower
  belongs_to :challenge
end
