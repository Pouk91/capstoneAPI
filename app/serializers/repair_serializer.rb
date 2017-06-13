class RepairSerializer < ActiveModel::Serializer
  attributes :id, :repairname, :repairdate, :suggestedmaintenancedate, :repaircost, :repaircomment
end
