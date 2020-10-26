class Customer < ActiveRecord::Base
   has_many :drinks, through: :roasters
end
