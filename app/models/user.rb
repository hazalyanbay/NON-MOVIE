require "./lib/recommendation.rb"
class User < ApplicationRecord

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :favorites
  has_many :favorite_movies, through: :favorites, source: :movie
  has_many :movies, through: :favorites
  include Recommendation
end

