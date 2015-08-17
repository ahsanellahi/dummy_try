class Engine < ActiveRecord::Base
  belongs_to :car
  attr_accessible :manufacturer, :number
end
