class Api::V1::ReservationsController < ApplicationController
    def index
      @reservations = Reservation.all
      render json: @reservations
    end

    def show
        @reserved_motorcycles = Reservation.where(user_id: params[:user_id])
        render json: @reserved_motorcycles
      end

  end
