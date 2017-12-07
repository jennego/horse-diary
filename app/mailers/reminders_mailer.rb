class RemindersMailer < ApplicationMailer
  def remind_user(reminder)
    @reminder = reminder
    @horse = reminder.horse
    mail(to:'jennego@gmail.com', subject: 'A Reminder!')
  end

end
