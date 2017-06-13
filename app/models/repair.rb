class Repair < ApplicationRecord
  belongs_to :cars
  belongs_to :users
  validates :repairname, :repairdate, :suggestedmaintenancedate, :repaircost, :repaircomment, presence: true
end
