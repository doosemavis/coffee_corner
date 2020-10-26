class CreateBeverages < ActiveRecord::Migration
  
  def change
    create_table :beverages do |t|
      t.string :ingredients
      t.string :size
      t.string :roaster_id
      t.timestamps null: false
    end
  end
end
