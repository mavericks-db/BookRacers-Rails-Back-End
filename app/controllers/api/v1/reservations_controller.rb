class Api::V1::ReservationsController < ApplicationController
    def index
      @reservations = Reservation.all
      render json: @reservations
    end

    def show
        @reserved_motorcycles = Reservation.where(user_id: params[:user_id])
        render json: @reserved_motorcycles
    end

    def create
        @motorcycle = Motorcycle.find(params[:id])
        @reservation = Reservation.new(reservation_params)
        @reservation.motorcycle_id = @motorcycle.id
        @reservation.user_id = current_user.id
        @reservation.total_price =
      if  @reservation.save
          render json: status: :success
      else
        render json: status: :unsuccessful
      end
    end

    private
    def reservation_params
      params.require(:reservation).permit(:start_date, :end_date, :city)
    end

  end
