class Posting < ActiveRecord::Base
  has_many :uploads, :dependent => :delete_all
  belongs_to :user
  attr_accessible :title
end
