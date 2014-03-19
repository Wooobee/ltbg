class Chatmessage < ActiveRecord::Base
	include BaseId
	belongs_to :user
	belongs_to :task
end
