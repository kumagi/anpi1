class CreateMailTemplates < ActiveRecord::Migration
  def change
    create_table :mail_templates do |t|
      t.text :title
      t.text :body
      t.text :mailName

      t.timestamps
    end
  end
end
