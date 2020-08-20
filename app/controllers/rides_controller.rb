class RidesController<ApplicationController
    before_action :authorized
    def index
        @rides = Ride.all
        @user_rides = Ride.all.select{|r| r.user_id == current_user}
    end

    def new    
        @user = User.find_by(id: params[:id])
        @ride = Ride.new
    end

    def create
        @ride = Ride.new(ride_params)
        @ride.user_id = current_user.id
        if @ride.valid?
            @ride.save
            redirect_to user_path(@ride.user_id)
        else
            flash[:errors] = @ride.errors.messages
            redirect_to user_path(@ride.user_id)
        end
    end
    
    def show
        find_ride
    end

    def edit
        find_ride
    end

    def update
    end

    def destroy
    end

    private

    def find_ride
        @ride = Ride.find(params[:id])
    end

    def ride_params
        params.require(:ride).permit(:user_id, :trail_id, :experience, :time, :date)
    end
end
