class CreateHorses < ActiveRecord::Migration[5.1]
  def change
    create_table :horses do |t|
      t.string :name
      t.string :avatar_url

      t.timestamps
    end
  end
end
