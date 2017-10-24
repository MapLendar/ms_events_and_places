class EventsController < ApplicationController
  before_action :set_event, only: [:show, :update, :destroy]


  # GET /events
  def index
    @events = Event.all

    render json: @events
  end

  # GET /events/1
  def show
    if @event != nil
	render json: @event
    else
	render json: @event.errors, status: :unprocessable_entity
    end

  end

  def events_by_owner
    @myevents = Event.where(owner_id: params[:owner_id] )
    render json: @myevents, status: 200
  end

  def events_by_place
    @eventplaces =  Event.where(place_id: params[:place_id])
    render json: @eventplaces, status: 200
  end


  # GET /signin/event/1
  def showMyEvent
    @response = HTTParty.get("http://192.168.99.101:3006/events/")
    @result = JSON.parse(@response.body)
    # @result.delete_if {|key, value| key["id"] != params [:id].to_i}
    render json: @result
    #end
  end

  # POST /events
  def create
    @event = Event.new(event_params)

    if @event.save
      render json: @event, status: :created, location: @event
    else
      render json: @event.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /events/1
  def update
    if @event.update(event_params)
      render json: @event
    else
      render json: @event.errors, status: :unprocessable_entity
    end
  end

  # DELETE /events/1sfddddddddddddddddd
  def destroy
    @event.destroy
  end

  def destroy_by_name
    @del = Event.where(:name => params[:name]).destroy_all
    render json: @del, status: 200
    #@event.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_event
      @event = Event.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def event_params
      params.require(:event).permit(:name, :description, :place_id, :start_time, :end_time, :owner_id)
    end
end
