class Beverage < ActiveRecord::Base
    belongs_to :roaster
    validation :name, :ingredients, :size, presence: true 
end
