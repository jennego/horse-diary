class CreatePostImages < ActiveRecord::Migration[5.1]
  def change
    create_table :post_images do |t|
         t.string :image_url
         t.references :post, foreign_key: true

      t.timestamps
    end
  end
end
