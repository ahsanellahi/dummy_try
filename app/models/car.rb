class Car < ActiveRecord::Base
  has_one :engine
  attr_accessible :manufacturer, :name, :registration
end
