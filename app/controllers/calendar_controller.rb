class CalendarController < ApplicationController
before_action :authenticate_user!
    def index
        @posts = Post.all
        @reminders = Reminder.all
    end

end
