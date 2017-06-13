# frozen_string_literal: true
class User < ApplicationRecord
  include Authentication
  has_many :examples
  belongs_to :repairs
  belongs_to :cars
end
