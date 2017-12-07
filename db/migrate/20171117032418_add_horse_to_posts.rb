class AddHorseToPosts < ActiveRecord::Migration[5.1]
  def change
  add_reference :posts, :horse, foreign_key: true, index:true

  end
end
