class User < ActiveRecord::Base
    has_secure_password
    has_many :roasters
    has_many :beverages, through: :roasters
    validates :username, :password, presence: true
    validates :username, uniqueness: true
end
