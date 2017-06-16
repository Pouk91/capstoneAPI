class Car < ApplicationRecord
  has_many :repairs
  has_many :users, through: :repairs
  validates :year, :make, :model, presence:true
end
