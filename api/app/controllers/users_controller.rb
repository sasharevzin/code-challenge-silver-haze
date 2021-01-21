# NOTE: We can go with graphql here but it's a lot of boilerplate for this project
class UsersController < ApplicationController
  def index
    render json: User.all
  end
end
