class Attraction < ActiveRecord::Base
  validates_presence_of :name, :tickets, :nausea_rating, :happiness_rating, :min_height

  has_many :rides
  has_many :users, through: :rides
end
