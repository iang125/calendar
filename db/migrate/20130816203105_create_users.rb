class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :zone_id
      t.string :name
      t.string :email
      t.string :address
      t.float :latitude
      t.float :longitude
      t.string :password_digest
      t.boolean :admin
      t.integer :location_id

      t.timestamps
    end
  end
end
