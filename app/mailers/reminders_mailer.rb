class RemindersMailer < ApplicationMailer
  def remind_user(reminder)
    @reminder = reminder
    @horse = reminder.horse
    @email = @reminder.user.email
    mail(to: @email,  subject: 'A Reminder!')
  end

end
