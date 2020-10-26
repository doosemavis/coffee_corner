class CreateRoasters < ActiveRecord::Migration[5.2]
  
  def change
    create_table :roasters do |t|
      t.string :name
      t.string :address
      t.string :beverage_id
      t.timestamps null: false
    end
  end
end
