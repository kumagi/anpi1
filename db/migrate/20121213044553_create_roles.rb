class CreateRoles < ActiveRecord::Migration
  def change
    create_table :roles do |t|
      t.string :role_name, null:false
      t.integer :power, null:false
      t.timestamps
    end
  end
end
