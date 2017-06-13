class CreateRepairs < ActiveRecord::Migration[5.0]
  def change
    create_table :repairs do |t|
      t.string :repairname
      t.datetime :repairdate
      t.datetime :suggestedmaintenancedate
      t.decimal :repaircost
      t.string :repaircomment

      t.timestamps
    end
  end
end
