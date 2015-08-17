class Comment < ActiveRecord::Base
  attr_accessible :message
  belongs_to :product
end
