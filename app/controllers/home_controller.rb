class HomeController < ApplicationController
  before_filter :prepare_login_form
  
  def index
  	@users = User.all
  end

  def prepare_login_form
    unless user_signed_in?
      @login_resource = User.new
    end
  end

end
