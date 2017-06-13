class Car < ApplicationRecord
  has_many :users
  has_many :repairs, through: :through
  validates :year, :make, :model, presence:true
end
