class Comment < ActiveRecord::Base
	belong_to :user
	validates :user, presence: true
end