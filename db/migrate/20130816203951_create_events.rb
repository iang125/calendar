class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :name
      t.integer :type_id
      t.string :discription
      t.datetime :end_time
      t.datetime :start_time
      t.integer :location_id
      t.integer :user_id

      t.timestamps
    end
  end
end
