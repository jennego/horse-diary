class CreateReminders < ActiveRecord::Migration[5.1]
  def change
    create_table :reminders do |t|
      t.text :body
      t.datetime :date
      t.references :user, foreign_key:true
      t.references :horse, foreign_key:true
      t.string :upload 

      t.timestamps
    end
  end
end
