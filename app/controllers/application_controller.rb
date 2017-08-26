class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  
  before_action :authenticate_user!
  
  include DeviseWhitelist
  include SetSource
  include CurrentUserConcern
  
  
end
  
