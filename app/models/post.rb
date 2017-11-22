class Post < ApplicationRecord
  belongs_to :category
  belongs_to :horse
  # belongs_to :user
end
