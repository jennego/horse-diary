class LogsController < ApplicationController
  before_action :authenticate_user!

  def create
    @horse = Horse.find(params[:horse_id])
     @log = @horse.logs.build(log_params)
     @log.user = current_user

       respond_to do |format|
      if @log.save
        format.html { redirect_to horse_path(@horse) }
        format.js   { render } # this will render answers/create.js.erb
      else
        # We can also give render a string as an argument. When doing so,
        # we can provide the path beginning from `/views` to the template we
        # want to render. ð will render `show.html.erb` from `/views/questions`.
        @logs = @horse.logs.order(created_at: :desc)
        format.html { render 'horses/show' }
        format.js   { render }
      end
    end

  end

  def destroy
    @log = Log.find(params[:id])
    @log.destroy
  end

  private

  def log_params
    params.require(:log).permit(:body)
  end
end
