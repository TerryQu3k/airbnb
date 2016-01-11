class User < ActiveRecord::Base
	validates :name, presence:true
	validates :password, presence:true
	validates :password, length: { in:6..20 }
	has_many :properties
	has_many :bookings
	has_many :comments

	has_secure_password
end