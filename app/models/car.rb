class Car < ApplicationRecord
  has_many :repairs
  has_many :users, through: :users
  validates :year, :make, :model, presence:true
end
