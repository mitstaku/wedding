class EventForm
  include ActiveModel::Model
  attr_accessor :event_id, :version_number, :details, :input_date, :ceremony_category_id, :ceremony_detail, :ceremony_cost,
                :adult_count, :child_count,
                :food_category_id, :food_detail, :food_cost, :venue_category_id, :venue_detail, :venue_cost,
                :costume_category_id, :costume_detail, :costume_cost,
                :beauty_category_id, :beauty_detail, :beauty_cost, :flower_category_id, :flower_detail, :flower_cost,
                :print_category_id, :print_detail, :print_cost, :staging_category_id, :staging_detail, :staging_cost,
                :photo_category_id, :photo_detail, :photo_cost, :video_category_id, :video_detail, :video_cost,
                :gift_category_id, :gift_detail, :gift_cost,
                :pre_ceremony_id, :pre_ceremony_detail, :pre_ceremony_cost, :cost

  validates :version_number, :input_date, :ceremony_category_id, :ceremony_detail, :ceremony_cost,
            :adult_count, :child_count,
            :food_category_id, :food_detail, :food_cost, :venue_category_id, :venue_detail, :venue_cost,
            :costume_category_id, :costume_detail, :costume_cost,
            :beauty_category_id, :beauty_detail, :beauty_cost, :flower_category_id, :flower_detail, :flower_cost,
            :print_category_id, :print_detail, :print_cost, :staging_category_id, :staging_detail, :staging_cost,
            :photo_category_id, :photo_detail, :photo_cost, :video_category_id, :video_detail, :video_cost,
            :gift_category_id, :gift_detail, :gift_cost,
            :pre_ceremony_id, :pre_ceremony_detail, :pre_ceremony_cost, presence: true

  def save
    return false unless valid?

    calculate_total_cost # 合計金額を計算
    ActiveRecord::Base.transaction do
      # 現在の日付をinput_dateに設定
      self.input_date = Date.today

      # 既存のイベントバージョンの数をカウントし、1を加えてversion_numberに設定
      self.version_number = EventVersion.where(event_id:).count + 1
      event_version = EventVersion.create!(
        event_id:,
        version_number:,
        details: 'Some details',
        cost:,
        input_date:
      )
      guest = Guest.create!(
        event_version_id: event_version.id,
        adult_count:,
        child_count:
      )
      ceremony = Ceremony.create!(
        event_version_id: event_version.id,
        ceremony_category_id:,
        detail: ceremony_detail,
        cost: ceremony_cost
      )
      food = Food.create!(
        event_version_id: event_version.id,
        food_category_id:,
        detail: food_detail,
        cost: food_cost
      )
      venue = Venue.create!(
        event_version_id: event_version.id,
        venue_category_id:,
        detail: venue_detail,
        cost: venue_cost
      )
      costume = Costume.create!(
        event_version_id: event_version.id,
        costume_category_id:,
        detail: costume_detail,
        cost: costume_cost
      )
      beauty = Beauty.create!(
        event_version_id: event_version.id,
        beauty_category_id:,
        detail: beauty_detail,
        cost: beauty_cost
      )
      flower = Flower.create!(
        event_version_id: event_version.id,
        flower_category_id:,
        detail: flower_detail,
        cost: flower_cost
      )
      print = Print.create!(
        event_version_id: event_version.id,
        print_category_id:,
        detail: print_detail,
        cost: print_cost
      )
      staging = Staging.create!(
        event_version_id: event_version.id,
        staging_category_id:,
        detail: staging_detail,
        cost: staging_cost
      )
      photo = Photo.create!(
        event_version_id: event_version.id,
        photo_category_id:,
        detail: photo_detail,
        cost: photo_cost
      )
      video = Video.create!(
        event_version_id: event_version.id,
        video_category_id:,
        detail: video_detail,
        cost: video_cost
      )
      gift = Gift.create!(
        event_version_id: event_version.id,
        gift_category_id:,
        detail: gift_detail,
        cost: gift_cost
      )
      pre_ceremony = PreCeremony.create!(
        event_version_id: event_version.id,
        pre_ceremony_id:,
        detail: pre_ceremony_detail,
        cost: pre_ceremony_cost
      )
    end
    true
  rescue ActiveRecord::RecordInvalid => e
    Rails.logger.error e.record.errors
    false
  end

  private

  def calculate_total_cost
    self.cost = [
      ceremony_cost.to_i,
      food_cost.to_i,
      venue_cost.to_i,
      costume_cost.to_i,
      beauty_cost.to_i,
      flower_cost.to_i,
      print_cost.to_i,
      staging_cost.to_i,
      photo_cost.to_i,
      video_cost.to_i,
      gift_cost.to_i,
      pre_ceremony_cost.to_i
    ].sum
  end
end
