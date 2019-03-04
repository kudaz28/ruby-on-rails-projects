class Event < ActiveRecord::Base
  validates_presence_of :event_id, :details, :author
  has_many :comments
end
