class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :posts
  has_many :horses, through: :too_many_horses
  has_many :too_many_horses, dependent: :nullify
  has_many :reminders

  def full_name
    "#{first_name} #{last_name}"
  end

end
