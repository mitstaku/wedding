class CreateVideos < ActiveRecord::Migration[7.0]
  def change
    create_table :videos do |t|
      t.references :event_version, null: false, foreign_key: true
      t.integer :video_category_id
      t.text :detail
      t.decimal :cost
      t.timestamps
    end
  end
end