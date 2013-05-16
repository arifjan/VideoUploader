class Posting < ActiveRecord::Base
  has_many :uploads, :dependent => :delete_all
  attr_accessible :title
end
