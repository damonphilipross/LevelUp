class User < ApplicationRecord
  has_many :challenges, through: :participants
end
