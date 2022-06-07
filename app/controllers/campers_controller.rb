class CampersController < ApplicationController

    def index
        campers = Camper.all 
        render json: campers
    end

    def show
        camper = Camper.find_by_id(params[:id])
        render json: camper
    end

    def create
        camper = Camper.create!(camper_params)
        render json: camper
    end

    private

    def camper_params
        params.permit(:name, :age)
    end

end
