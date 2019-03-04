class Newsletter < ActiveRecord::Base
  attr_accessible :title, :date, :file
  mount_uploader :file, FileUploader
  validates :file, presence: true # Make sure the owner's name is present.
end
