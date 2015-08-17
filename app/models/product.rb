class Product < ActiveRecord::Base
  # include ActiveModel::Validations
  # include ActiveModel::Conversion
  # extend ActiveModel::Naming
  has_many :comments

  attr_accessible :name, :price

  validates_presence_of :name

end
