class BookingsController < ApplicationController
    include PiboxConsumer

    def index
        @bookings = self.get_list()
        render json: @bookings
    end

    def create
        @booking = self.create_booking(params['booking'])
        render json: @booking
    end

    def show
        @booking = self.show_booking(params[:id])
        render json: @booking
    end
    
end
