class Horse < ApplicationRecord
  # belongs_to :user
  has_many :posts
  # has_many :users, through: :too_many_horses
  has_many :too_many_horses, dependent: :nullify
  has_one :horse_profile

end
