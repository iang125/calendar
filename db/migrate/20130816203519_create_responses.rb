class CreateResponses < ActiveRecord::Migration
  def change
    create_table :responses do |t|
      t.integer :event_id
      t.boolean :atending
      t.datetime :arivle_time
      t.datetime :deparcher_time
      t.integer :user_id

      t.timestamps
    end
  end
end
