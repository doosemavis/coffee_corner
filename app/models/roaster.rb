class Roaster < ActiveRecord::Base
    has_many :customers
    has_many :beverages
end
