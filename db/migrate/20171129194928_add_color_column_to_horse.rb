class AddColorColumnToHorse < ActiveRecord::Migration[5.1]
  def change
    add_column :horses, :color, :string 
  end
end
