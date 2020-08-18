class BikesController < ApplicationController
    before_action :authorized
    def index
        @bikes = Bike.all
    end

    def new
        @bike = Bike.new
    end

    def create
        @bike = Bike.new(bike_params)
        if @bike.valid?
            @bike.save
            redirect_to bike_path(@bike)
        else
            flash[:message] = @bike.error.message
            redirect_to '/bike/new'
    end
    
    def show
    end

    def edit
    end

    def update
    end

    def destroy
    end

    private

    def find_bike
        @bike = Bike.find(params[:id])
    end

    def bike_params
        params.require(:bike).permit(:make, :model, :bike_type, :frame_size, :tire_size, :price, :user_id, :bike_pic)
    end
end