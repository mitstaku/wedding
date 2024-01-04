class EventVersionsController < ApplicationController
  def new
    @event = Event.find(params[:event_id])
    @event_form = EventForm.new
  end

  def create
    @event_form = EventForm.new(event_form_params)
    @event = Event.find(params[:event_id])
    if @event_form.valid?
      @event_form.save
      redirect_to root_path, notice: 'イベントバージョンが正常に作成されました。'
    else
      render :new
    end
  end

  private

  def event_form_params
    params.require(:event_form).permit(:version_number, :details, :cost, :input_date, :ceremony_id, :detail)
          .merge(event_id: params[:event_id])
  end
end
