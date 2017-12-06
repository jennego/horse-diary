class Horse < ApplicationRecord
  # belongs_to :user
  has_many :posts
  has_many :reminders
  has_many :too_many_horses, dependent: :nullify
  has_many :users, through: :too_many_horses
  has_many :logs 

  mount_uploader :avatar_url, AvatarUploader

   attr_accessor :crop_x, :crop_y, :crop_w, :crop_h
  after_update :crop_avatar

  def crop_avatar
    avatar_url.recreate_versions! if crop_x.present?
  end

end
