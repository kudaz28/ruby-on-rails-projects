class Newsletters < ActiveRecord::Base
  mount_uploader :attachment, FileUploader
end
