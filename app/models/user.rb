class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  # for user
  has_many :challenges
  has_many :participants
  # for influencer
  has_many :challenge_participations, through: :participants, source: :challenge
end

