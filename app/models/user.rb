class User < ActiveRecord::Base
    has_secure_password
    has_many :roasters
    has_many :beverages, through: :roasters
    validates :name, :username, :password, :email, presence: true
end
