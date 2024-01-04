class EventForm
  include ActiveModel::Model
  attr_accessor :event_id, :version_number, :details, :cost, :input_date,
                :adult_count, :child_count,
                :ceremony_id, :detail, :event_version_id,
                :event_version, :food_id, :venue_id, :print_id,
                :staging_id, :photo_id, :video_id, :gift_id,
                :pre_ceremony_id, :beauty_category_id, :costume_category_id,
                :flower_category_id, :food_category_id, :gift_category_id,
                :photo_category_id, :print_category_id, :staging_category_id,
                :venue_category_id, :video_category_id, :beauty_cost,
                :costume_cost, :flower_cost,
                :food_cost,
                :gift_cost,
                :photo_cost,
                :pre_ceremony_cost,
                :print_cost,
                :staging_cost,
                :venue_cost,
                :video_cost

  validates :ceremony_id, :detail, :cost, :event_id, :version_number,
            :details, :input_date, :beauty_category_id, :costume_category_id,
            :flower_category_id, :food_category_id, :gift_category_id,
            :photo_category_id, :pre_ceremony_id, :print_category_id,
            :staging_category_id, :venue_category_id, :video_category_id,
            :adult_count, :child_count, presence: true

  def save
    return false unless valid?

    calculate_total_cost # 合計金額を計算
    ActiveRecord::Base.transaction do
      event_version = EventVersion.create!(
        ceremony_id:,
        event_id:,
        version_number:,
        details:,
        cost:,
        input_date:,
        beauty_category_id:,
        costume_category_id:,
        flower_category_id:,
        food_category_id:,
        gift_category_id:,
        photo_category_id:,
        pre_ceremony_id:,
        print_category_id:,
        staging_category_id:,
        venue_category_id:,
        video_category_id:,
        adult_count:,
        child_count:
      )
    end

    def calculate_total_cost
      self.cost = [
        beauty_cost.to_i,
        costume_cost.to_i,
        flower_cost.to_i,
        food_cost.to_i,
        gift_cost.to_i,
        photo_cost.to_i,
        pre_ceremony_cost.to_i,
        print_cost.to_i,
        staging_cost.to_i,
        venue_cost.to_i,
        video_cost.to_i
      ].sum
    end
  rescue ActiveRecord::RecordInvalid
    false
  end
end
