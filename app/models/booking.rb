class Booking < ActiveRecord::Base
	belong_to :property
	validates :name presence: true
end