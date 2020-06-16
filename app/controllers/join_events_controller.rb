class JoinEventsController < ApplicationController

    def index
        join_event = JoinEvent.all
        #puts join_event
        render json: join_event
    end

    def show
        join_event = JoinEvent.find(params[:id])
        render json: join_event
    end







    private

    def join_event_params
        params.require(:join_event).permit(:user_id, :event_id)
    end

end
