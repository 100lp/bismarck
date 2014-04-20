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
    @nav = %W[ #{root_path} #{about_path} #{mebel_path} #{icons_path} #{contact_path} ]
    @mebel_nav = %W[ #{mebel_path} #{mebel_cupboard_path} #{mebel_lounge_path} #{mebel_kids_path} #{mebel_cloakroom_path} #{mebel_hall_path} #{mebel_bibble_path} ]
    @kitchen_nav = %W[ #{mebel_kitchen_classic_path} #{mebel_kitchen_timenow_path} ]
    @article_nav = %W[ #{article01_path} #{article02_path} #{article03_path} #{article04_path} ]

    @nav_cp_index = @nav.index(@current_page)
    @mebel_cp_index = @mebel_nav.index(@current_page)
    @kitchen_cp_index = @kitchen_nav.index(@current_page)
    @article_cp_index = @article_nav.index(@current_page)
  end

end
