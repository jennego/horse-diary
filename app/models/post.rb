class Post < ApplicationRecord
  belongs_to :horse
  has_many :multicategories, dependent: :destroy
  has_many :categories, through: :multicategories
    has_many :post_images, dependent: :destroy
    accepts_nested_attributes_for :post_images, allow_destroy: true

  belongs_to :user

def start_time
      self.date
end
end
