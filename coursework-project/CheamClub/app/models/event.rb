class Event < ActiveRecord::Base
    validates_presence_of :title, :description, :date
    validates_uniqueness_of :title
end
