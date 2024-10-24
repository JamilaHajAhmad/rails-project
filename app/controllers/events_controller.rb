class EventsController < ApplicationController
    def create
        event = Event.new(event_params)
        if event.save
            event.comments.create(body: params[:comment][:body]) if params[:comment]
            redirect_to event_path(event), notice: "Event and comment created!"
        else
            render :new
        end
    end

    private

    def event_params
        params.require(:event).permit(:name, :date)
    end
end
