module PiboxConsumer

    def initialize
        @token = ENV["PIBOX_TOKEN"]        
    end

    def get_list
        url = "https://sandbox.picap.co/api/third/bookings"
        response = HTTParty.get(url, query: {t: @token})
        Log.create(response: JSON.parse(response.body))
        return response
    end

    def create_booking(booking_params)
        url = "https://sandbox.picap.co/api/third/bookings"
        response = HTTParty.post(url, body: {booking: JSON.parse(booking_params.to_json)}, query: {t: @token})
        Log.create(response: JSON.parse(response.body))
        return response
    end

    def show_booking(booking_id)
        url = "https://sandbox.picap.co/api/third/bookings/#{booking_id}"
        response = HTTParty.get(url, query: {t: @token})
        Log.create(response: JSON.parse(response.body))
        return response
    end
    
end