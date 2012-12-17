class CreateAnpiInfos < ActiveRecord::Migration
  def change
    create_table :anpi_infos do |t|
      t.integer :syachiku
      t.integer :hurt_info
      t.integer :family_info
      t.references :member_info, null:false
      t.text :location_info
      t.text :syachiku_reason
      t.text :contact
      t.timestamps
    end
    add_index :anpi_infos, :member_info_id, :unique => true
  end
end
