class ApplicationController < ActionController::Base
  protect_from_forgery
  http_basic_authenticate_with :name => "12345", :password => "12345"
end
