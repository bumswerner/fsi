class User::NotificationsController < ApplicationController
  
  # set access roles
  access user: {except: [:destroy, :new, :create, :update, :edit]}
  
  # GET /user/news/:notificationtype_id
  def index
    @notifications = Notification.all.page(params[:page]).per(4)
    @notificationtypes = Notificationtype.all
    @notificationtype = @notificationtypes.find(params[:notificationtype_id])
    @notifications_per_type = @notificationtype.notifications.page(params[:page]).per(4)
  end
  
  
  def show
  
  end
end