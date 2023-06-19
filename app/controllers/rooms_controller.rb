class RoomsController < ApplicationController
    def index
      @rooms = Room.all
    end

    def new
      @room = Room.new
    end
  
    def create
      @room = Room.new(room_params)
      if @room.save
        redirect_to rooms_path, notice: "Pokój został dodany!"
      else
        render :new
      end
    end
  
    private
  
    def room_params
      params.require(:room).permit(:name, :description)
    end
  end
  