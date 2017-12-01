class HorsesController < ApplicationController

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

    private
    def horse_params
      params.require(:horse).permit!
    end

    def find_horse
    @horse = Horse.find params[:id]
    end

end
