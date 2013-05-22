class Upload < ActiveRecord::Base
  belongs_to :posting
  attr_accessible :description, :name, :file_name
  validates_presence_of :name, :description, message: "is required field and can't be blank!"
  mount_uploader :file_name,  FileUploader
end
