class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :configure_permitted_parameters, if: :devise_controller?


  def configure_permitted_parameters
   devise_parameter_sanitizer.permit(:account_update) do |user_params|
    user_params.permit(:first_name, :last_name, :email, :password, :password_confirmation, :current_password)
   end
   devise_parameter_sanitizer.permit(:sign_up) do |user_params|
    user_params.permit(:first_name, :last_name, :email, :password, :password_confirmation)
   end
  end

  def define_reminders
    start_date = Date.today
    end_date = 7.days.from_now
    @reminder_list = Reminder.where(date: start_date...end_date)
  end

end
