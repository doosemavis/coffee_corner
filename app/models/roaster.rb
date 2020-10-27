class Roaster < ActiveRecord::Base
    belongs_to :user
    has_many :beverages
end
