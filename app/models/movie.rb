class Movie < ApplicationRecord
	has_many :favorites
	has_many :characterizations, dependent: :destroy
	has_many :genres, through: :characterizations
	belongs_to :actor 
end
