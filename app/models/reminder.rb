class Reminder < ApplicationRecord
  # belongs_to :user
  belongs_to :horse, optional:true
  belongs_to :user

  validates :date, presence: true

  def start_time
    if self.date.present?
    self.date
    else
    self.created_at
    end
  end
end
