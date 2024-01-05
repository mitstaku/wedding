class EventVersionsController < ApplicationController
  def new
    @event = Event.find(params[:event_id])
    @event_form = EventForm.new
  end

  def create
    @event_form = EventForm.new(event_form_params)
    @event = Event.find(params[:event_id])

    # 現在の日付をinput_dateに設定
    @event_form.input_date = Date.today

    # 既存のイベントバージョンの数をカウントし、1を加えてversion_numberに設定
    @event_form.version_number = EventVersion.where(event_id: @event.id).count + 1

    if @event_form.valid?
      @event_form.save
      redirect_to root_path, notice: 'イベントバージョンが正常に作成されました。'
    else
      Rails.logger.error @event_form.errors.full_messages
      render :new
    end
  end

  private

  def event_form_params
    params.require(:event_form).permit(
      :adult_count, :child_count, :ceremony_category_id, :ceremony_cost, :ceremony_detail,
      :food_category_id, :food_cost, :food_detail, :venue_category_id, :venue_cost, :venue_detail,
      :costume_category_id, :costume_cost, :costume_detail,
      :beauty_category_id, :beauty_cost, :beauty_detail, :flower_category_id, :flower_cost, :flower_detail,
      :print_category_id, :print_cost, :print_detail, :staging_category_id, :staging_cost,
      :staging_detail, :photo_category_id, :photo_cost, :photo_detail, :video_category_id,
      :video_cost, :video_detail, :gift_category_id, :gift_cost, :gift_detail,
      :pre_ceremony_id, :pre_ceremony_cost, :pre_ceremony_detail
    )
          .merge(event_id: params[:event_id])
  end
end
