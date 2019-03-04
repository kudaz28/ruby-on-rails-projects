class Comment < ActiveRecord::Base
  validates_presence_of :event_id, :details, :author
  
  # Delete the associated comments when an event is removed from the database
  belongs_to :event, :dependent => :destroy
end
