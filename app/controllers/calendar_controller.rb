class CalendarController < ApplicationController
    def index
        @posts = Post.all
        @reminders = Reminder.all
    end

end
