class CreateCalifications < ActiveRecord::Migration
  def change
    create_table :califications do |t|
      t.integer :score
      t.integer :user_id
      t.integer :location_id
      t.string :message

      t.timestamps null: false
    end
  end
end
