class CreateMemberInfos < ActiveRecord::Migration
  def change
    create_table :member_infos do |t|
      t.string :full_name, null:false
      t.string :birthday, null:false
      t.string :gender, null:false
      t.string :email, null:false
      t.references :project, null:false
      t.references :team, null:false
      t.references :role, null:false
      t.timestamps
    end
  end
end
