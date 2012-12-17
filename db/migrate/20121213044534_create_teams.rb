class CreateTeams < ActiveRecord::Migration
  def change
    create_table :teams do |t|
      t.text :team_name, null:false
      t.timestamps
    end
  end
end
