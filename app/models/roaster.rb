class Roaster < ActiveRecord::Base
    belongs_to :customer
    has_many :beverages
end
