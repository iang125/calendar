class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.boolean :atending
      t.integer :event_id

      t.timestamps
    end
  end
end
