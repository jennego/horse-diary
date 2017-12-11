class Horse < ApplicationRecord
  # belongs_to :user
  has_many :posts, dependent: :destroy
  has_many :reminders, dependent: :destroy
  has_many :too_many_horses, dependent: :destroy
  has_many :users, through: :too_many_horses
  has_many :logs, dependent: :destroy

  mount_uploader :avatar_url, AvatarUploader

   attr_accessor :crop_x, :crop_y, :crop_w, :crop_h
  after_update :crop_avatar

  def crop_avatar
    avatar_url.recreate_versions! if crop_x.present?
  end

end
