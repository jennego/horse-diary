class CreateHorses < ActiveRecord::Migration[5.1]
  def change
    create_table :horses do |t|
      t.string :name
      t.string :show_name
      t.string :full_name
      t.string :reg_name
      t.integer :approx_age
      t.date :age
      t.string :breed
      t.integer :height
      t.string :avatar_url

      t.timestamps
    end
  end
end
