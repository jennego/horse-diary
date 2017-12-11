class CalendarController < ApplicationController
before_action :authenticate_user!
    def index
      @posts = Post.where(user: current_user)
      @reminders = Reminder.all
    end

end
