# frozen_string_literal: true
class User < ApplicationRecord
  include Authentication
  has_many :examples
  has_many :cars
  has_many :repairs, through: :cars
end
