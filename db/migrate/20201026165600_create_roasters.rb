class CreateRoasters < ActiveRecord::Migration
  def change
    create_table :roasters do |t|

      t.timestamps null: false
    end
  end
end
