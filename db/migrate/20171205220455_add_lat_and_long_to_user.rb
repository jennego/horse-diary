class AddLatAndLongToUser < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :longtude, :float
    add_column :users, :latitude, :float
  end
end
