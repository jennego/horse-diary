class Post < ApplicationRecord
  belongs_to :horse
  has_many :multicategories, dependent: :destroy
  has_many :categories, through: :multicategories


  # belongs_to :user
end
