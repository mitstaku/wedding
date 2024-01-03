class EventsController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show]
  before_action :set_event, only: [:show, :edit, :update, :destroy]

  def index
    @events = Event.all
  end

  def new
    @event = Event.new
  end

  def create
    @event = current_user.events.build(event_params)
    if @event.save
      redirect_to @event, notice: 'イベントが正常に作成されました。'
    else
      puts @event.errors.full_messages
      render :new
    end
  end

  def edit
    if @event.user_id == current_user.id
    else
      redirect_to root_path
    end
  end

  def update
    if @event.update(event_params)
      redirect_to event_path(@event)
    else
      render :edit, status: :unprocessable_entity
    end
  end
  
  def destroy
    if @event.user_id == current_user.id
      @event.destroy
      redirect_to root_path
    else
      redirect_to root_path
    end
  end


  private
    def set_event
      @event = Event.find(params[:id])
    end

    def event_params
      params.require(:event).permit(:name, :event_date)
    end
    
end
