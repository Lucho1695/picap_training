module PiboxConsumer

    def initialize
        @token = ENV["PIBOX_TOKEN"]        
    end

    def get_list
        url = "https://sandbox.picap.co/api/third/bookings"
        return HTTParty.get(url, query: {t: @token})
    end

    def create_booking(booking_params)
        url = "https://sandbox.picap.co/api/third/bookings"
        return HTTParty.post(url, body: {booking: JSON.parse(booking_params.to_json)}, query: {t: @token})
    end

    def show_booking(booking_id)
        url = "https://sandbox.picap.co/api/third/bookings/#{booking_id}"
        return HTTParty.get(url, query: {t: @token})
    end
    
end