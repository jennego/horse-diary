class CalendarController < ApplicationController
before_action :authenticate_user!
before_action :define_reminders
    def index
        @posts = Post.all
        @reminders = Reminder.all
    end

end
