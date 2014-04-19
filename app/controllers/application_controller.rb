class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_filter :mebel_paths, :current_page, :back_next

  def mebel_paths
    @korpus = "korpus"
    @korpus_mini = "korpus_mini"
  end

  def current_page
    @current_page = request.env['PATH_INFO']
  end

  def back_next
    @mebel_nav = %W[ kitchen cupboard lounge kids cloakroom hall bibble ]
  end

end
