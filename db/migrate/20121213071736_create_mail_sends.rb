class CreateMailSends < ActiveRecord::Migration
  def change
    create_table :mail_sends do |t|

      t.timestamps
    end
  end
end
