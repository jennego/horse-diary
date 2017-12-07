class CreateTooManyHorses < ActiveRecord::Migration[5.1]
  def change
    create_table :too_many_horses do |t|
      t.references :user, foreign_key: true
      t.references :horse, foreign_key: true
      t.timestamps
    end
  end
end
