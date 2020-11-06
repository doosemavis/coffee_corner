class Beverage < ActiveRecord::Base
    belongs_to :roaster
    validates :name, :ingredients, :size, presence: true 
end
