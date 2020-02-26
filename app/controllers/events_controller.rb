class EventsController < ApplicationController
  before_action :find_event, only: [ :show, :destroy]

  def index
    @events = policy_scope(Event)
  end

  def show
    authorize @event
    @user = @event.user
  end

  # add authorize before entry is actually committed in DB
  def new
    @event = Event.new
    authorize @event
  end

  def create
    @event = Event.new(event_params)
    authorize @event
    @event.user = current_user
    if @event.save
      redirect_to events_path(@event)
    else
      render :new
    end
  end

  def edit
    authorize @event
    @event = Event.find(params[:id])
  end

  def update
    authorize @event
    @event = Event.find(params[:id])
    @event.update(event_params)
    redirect_to events_path(@event)
  end

  private

  def event_params
    params.require(:event).permit(:name)
  end

  def find_event
    @event = Event.find(params[:id])
  end
end
