class Task < ActiveRecord::Base
	include BaseId
	has_many :sub_tasks, :class_name => "Task", :foreign_key => "parent_id"
  	belongs_to :parent_task, :class_name => "Task"

  	mount_uploader :icon, TaskIconUploader

  	has_many :timeline
  	has_many :chatmessages
end
