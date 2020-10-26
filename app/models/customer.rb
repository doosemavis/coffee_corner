class Customer < ActiveRecord::Base
    has_many :roasters
    has_many :beverages, through: :roasters
end
