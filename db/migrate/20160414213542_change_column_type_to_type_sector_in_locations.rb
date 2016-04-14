class ChangeColumnTypeToTypeSectorInLocations < ActiveRecord::Migration
  def change
  change_table :locations do |t|
  
  t.rename :type, :type_sector
end
  end
end
