class HorsesController < ApplicationController
before_action :authenticate_user!
before_action :define_reminders

    def new
      @horse = Horse.new
      render 'horses/new'
    end

    def create
      @horse = Horse.new horse_params
      if @horse.save
       if params[:horse][:avatar_url].present?
        render :crop
      else
        redirect_to horse_path(@horse)
       end
      else
        render :new
      end
    end

    def index
      @horses = Horse.all
    end

    def edit
      find_horse
    end

    def update
      find_horse
      if @horse.update horse_params
        if params[:horse][:avatar_url].present?
          render :crop
        else
        redirect_to horse_path(@horse)
        end
      else
        render :edit
      end
    end

    def show
      find_horse
    end

    def destroy
    end

    def posts
      find_horse
      @posts = @horse.posts
    end

    def reminders
      find_horse
      @reminders = @horse.reminders
    end

    private
    def horse_params
      params.require(:horse).permit!
    end

    def find_horse
    @horse = Horse.find params[:id]
    end

end
