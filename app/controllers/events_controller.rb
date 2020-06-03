class EventsController < ApplicationController

    def index
        event = Event.all
        #puts event
        render json: event
    end

    def show
        event = Event.find(params[:id])
        render json: event
    end

    def create 
        event = Event.create(event_params)
        render :json => event

    end 



    private

    def event_params
        params.require(:event).permit(:name, :picture, :description, :address, :user_id)
    end



end
