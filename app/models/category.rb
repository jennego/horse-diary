class Category < ApplicationRecord
  has_many :multicategories, dependent: :destroy
  has_many :posts, through: :multicategories

end
