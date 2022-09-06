class ComputersController < ApplicationController
    def create
        computer = Computer.create!(
            model: params[:model],
            brand: params[:brand],
            year: params[:year]
        )
        render json: computer
    end

    def index
        render json: Computer.all
    end
end
