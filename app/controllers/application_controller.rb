class ApplicationController < ActionController::Base
  before_action :authenticate_user!

  def after_sign_out_path_for scope
    home_path
  end
end
