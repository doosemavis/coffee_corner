class Beverage < ActiveRecord::Base
    belongs_to :roasters
    belongs_to :customers
end
