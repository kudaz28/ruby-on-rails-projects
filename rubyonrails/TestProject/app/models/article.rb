class Article < ActiveRecord::Base
  validates_presence_of :title, :content, :date, :author
end
