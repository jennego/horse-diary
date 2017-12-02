class AddGenderToHorses < ActiveRecord::Migration[5.1]
  def change
    add_column :horses, :sex, :string
  end
end
