class StateIdsController < ApplicationController
  before_action :load_user

  def create
    @state_id = @user.state_ids.new(state_id_params)

    if @state_id.save
      render json: @state_id, status: :created
    else
      render json: @state_id.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @user.state_ids.find(params[:id]).destroy
  end

  private

  def state_id_params
    params.fetch(:state_id, {}).permit(:number, :state, :expiration_date, :image_path)
  end
end
