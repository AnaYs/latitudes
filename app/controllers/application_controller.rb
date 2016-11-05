class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_action :authenticate_user!
  before_action :instagram_feed

private

  def instagram_feed
    @popular_images ||= Instagram.user_recent_media.sample(3)
  end
end
