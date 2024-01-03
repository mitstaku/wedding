class CreateEventVersions < ActiveRecord::Migration[7.0]
  def change
    create_table :event_versions do |t|
      t.references :event, null: false, foreign_key: true
      t.integer :version_number, null: false
      t.text :details, null: false
      t.decimal :cost, null: false
      t.date :input_date, null: false
      t.timestamps
    end
  end
end
