class BikesController < ApplicationController
    before_action :authorized
    def index
        @bikes = Bike.all
    end

    def new    
        @user = User.find_by(id: params[:id])
        @bike = Bike.new
    end

    def create
        @bike = Bike.new(bike_params)
        @bike.user_id = current_user.id
        if @bike.valid?
            @bike.save
            redirect_to bike_path(@bike)
        else
            flash[:errors] = @bike.errors.messages
            redirect_to user_path(@bike.user_id)
        end
    end
    
    def show
        find_bike
    end

    def edit
        find_bike
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