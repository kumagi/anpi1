class CreateStatuses < ActiveRecord::Migration
  def change
    create_table :statuses do |t|
      t.references :mail_template
      t.time :last_send

      t.timestamps
    end
  end
end
