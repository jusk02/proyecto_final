class CreateLocations < ActiveRecord::Migration
  def change
    create_table :locations do |t|
      t.string :city
      t.string :name
      t.string :address
      t.text :description
      t.string :type
      t.float :avg_score
      t.string :phone
      t.string :photos

      t.timestamps null: false
    end
  end
end
