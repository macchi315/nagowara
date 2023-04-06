class EventsController < ApplicationController
  before_action :move_to_login, only: [:new, :edit, :destroy]

  def index
    @events = Event.all
  end

  def new
    @event = Event.new
  end

  def create
    Event.create(event_parameter)
    redirect_to root_path
  end

  def show
    @event = Event.find(params[:id])
  end

  def edit
    @event = Event.find(params[:id])
  end

  def update
    @event = Event.find(params[:id])
    if @event.update(event_parameter)
      redirect_to root_path
    else
      render :edit
    end
  end

  def destroy
    event = Event.find(params[:id])
    event.destroy
    redirect_to root_path
  end

  private

  def move_to_login
    return if user_signed_in?
    redirect_to(events_index_path)
  end

  def event_parameter
    params.require(:event).permit(:live_name, :place, :start_time, :guest, :price, :image)
  end
end

