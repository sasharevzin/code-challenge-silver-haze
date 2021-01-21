class ApplicationController < ActionController::API
  private

  # NOTE: I think it's ok move to the base class for now
  def load_user
    @user = User.find(params[:user_id])
  end
end
