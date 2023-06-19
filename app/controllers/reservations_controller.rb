class ReservationsController < ApplicationController
    def index
      @reservations = Reservation.all
    end
  
    def new
      @reservation = Reservation.new
    end
  
    def create
      @reservation = Reservation.new(reservation_params)
      if @reservation.save!
        redirect_to root_path, notice: "Rezerwacja została utworzona!"
      else
        render :new
      end
    end
  
    private
  
    def reservation_params
      params.require(:reservation).permit(:reservationDate, :useDate, :desk_id, :user_id)
    end
  end
  