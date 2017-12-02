class RemindersController < ApplicationController
  def new
    @reminder = Reminder.new
  end

  def create
    @reminder = Reminder.new reminder_params
    @reminder.user = current_user
   if  @reminder.save
     redirect_to reminders_path
   end
  end

  def index
    @reminders = Reminder.order(created_at: :desc)
  end

  def show
    find_reminder
  end


  def edit
    find_reminder
  end

  def update
    find_reminder
    if @reminder.update reminder_params
      redirect_to reminder_path(@reminder)
    else
      render :edit
    end
  end

  def destroy
    find_reminder
    @reminder.destroy
    redirect_to reminders_path
  end

  private
  def reminder_params
    params.require(:reminder).permit(:body, :date, :horse_id, :upload)
  end

  def find_reminder
  @reminder = Reminder.find params[:id]
  end
end
