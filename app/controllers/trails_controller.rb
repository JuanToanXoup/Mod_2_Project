class TrailsController < ApplicationController
    before_action :authorized
    def index
        @q = Trail.ransack(params[:q])
        @trails = @q.result(distinct: true)
    end

    def new
        @trail = Trail.new
    end

    def create
        @trail = Trail.new(trail_params)
        if @trail.valid?
            @trail.save
            redirect_to trail_path(@trail)
        else
            flash[:messages] = @trail.errors.messages
            redirect_to new_trail_path
        end
    end
    

    def show
        find_trail
    end

    def edit
        find_trail
    end

    def update
        find_trail
        @trail.update(trail_params)
        redirect_to trail_path(@trial)
    end

    def destroy
    end

    private 
    def find_trail
        @trail = Trail.find(params[:id])
    end

    def trail_params
        params.require(:trail).permit(:name,:location,:length,:duration,:difficulty, :trail_type, :trail_pic)
    end
end