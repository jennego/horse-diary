class User < ApplicationRecord
  has_many :posts
  has_many :horses, through: :too_many_horses
  has_many :too_many_horses, dependent: :nullify  
end
