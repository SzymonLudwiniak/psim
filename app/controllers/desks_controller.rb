class DesksController < ApplicationController
    def index
        @desks = Desk.all
    end
    
    def new
        @desk = Desk.new
    end
    
    def create
        @desk = Desk.new(desk_params)
        if @desk.save
        redirect_to desks_path, notice: "Biurko zostało dodane!"
        else
        render :new
        end
    end
    
    private
    
    def desk_params
        params.require(:desk).permit(:nazwa, :opis)
    end
end
      