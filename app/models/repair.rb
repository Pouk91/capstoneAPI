class Repair < ApplicationRecord
  has_many :users
  has_many :cars, through: :users

end
