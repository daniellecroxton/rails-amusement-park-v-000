class User < ActiveRecord::Base
  has_secure_password
  validates_presence_of :name
  has_many :rides
  has_many :attractions, through: :rides

  def mood
    if self.happiness >= self.nausea
      "happy"
    elsif self.nausea > self.happiness
      "sad"
    end
  end
end
