class CreateBeverages < ActiveRecord::Migration[5.2]
  
  def change
    create_table :beverages do |t|
      t.string :ingredients
      t.string :size
      t.timestamps null: false
    end
  end
end
