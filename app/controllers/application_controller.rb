class ApplicationController < ActionController::Base
  before_action :set_current_user

  def ser_current_user
    @current_user = User.find_by(id: sessoin[:user_id])
  end
end
