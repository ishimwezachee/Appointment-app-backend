class ReservationsController < ApplicationController

    def index
        @reservations = Reservation.all
        render json: @reservations, status: :ok
    end

    def new
        @reservation = Reservation.new
    end

    def create
        @reservation = Reservation.new(reservation_params)
        return render json: @reservation.errors, status: :unprocessable_entity unless @reservation.save
    
        render json: @reservation, status: :created
      end

    private

    def reservation_params
        params.require(:reservation).permit(:start_time, :end_time, :item_id, :user_id)
    end
end
