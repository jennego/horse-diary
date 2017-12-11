class UsersController < ApplicationController

  def dashboard

  @horses = Horse.all
  @reminders  = Reminder.limit(20).order('date asc').where(user:current_user)
  @posts  = Post.where(user: current_user).order('date desc').limit(20)

  end


end
