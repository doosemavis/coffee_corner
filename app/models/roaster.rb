class Roaster < ActiveRecord::Base
    belongs_to :user
    has_many :beverages
    validates :name, :address, presence: true 
end
