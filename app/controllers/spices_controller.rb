class SpicesController < ApplicationController

    def index
        spice = Spice.all
        render json: spice, status: :created
    end

    def create
        spice = Spice.create(spice_params)
        render json: spice, status: :created
    end

    def update
        spice = Spice.find_by(id: params[:id])
        render json: spice.update(spice_params), status: :accepted
    end

    def destroy

    end

    private

    def spice_params
        params.permit(:title, :image, :description, :notes, :rating)
    end

end


# [:index, :create, :update, :destroy ]