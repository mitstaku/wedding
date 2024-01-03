class EventVersionsController < ApplicationController

  def new
    @event = Event.find(params[:event_id])
    @event_version = @event.event_versions.build
  end

  def create
    @event_version = EventVersion.new(event_version_params)
    if @event_version.save
      redirect_to @event_version, notice: 'イベントバージョンが正常に作成されました。'
    else
      render :new
    end
  end
end