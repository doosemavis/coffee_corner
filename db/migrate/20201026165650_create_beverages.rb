class CreateBeverages < ActiveRecord::Migration
  def change
    create_table :beverages do |t|

      t.timestamps null: false
    end
  end
end
