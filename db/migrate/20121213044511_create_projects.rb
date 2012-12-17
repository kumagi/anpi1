class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.text :p_name, null:false

      t.timestamps
    end
  end
end
