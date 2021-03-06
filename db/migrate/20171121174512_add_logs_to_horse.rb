class AddLogsToHorse < ActiveRecord::Migration[5.1]
  def change
    create_table :logs do |t|
      t.text :body
      t.references :user, index: true, foreign_key: true
      t.references :horse, index: true, foreign_key: true
      t.timestamps
    end
  end
end
