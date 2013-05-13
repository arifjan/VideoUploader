class Upload < ActiveRecord::Base
  attr_accessible :description, :name
  validates_presence_of :name, :description, message: "is required field and can't be blank!"
end
