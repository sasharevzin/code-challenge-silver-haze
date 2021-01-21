class MedicalRecommendationsController < ApplicationController
  before_action :load_user

  def create
    @medical_recommendation = @user.medical_recommendations.new(medical_recommendation_params)

    if @medical_recommendation.save
      render json: @medical_recommendation, status: :created
    else
      render json: @medical_recommendation.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @user.medical_recommendations.find(params[:id]).destroy
  end

  private

  def medical_recommendation_params
    params.fetch(:medical_recommendation, {}).permit(:number, :issuer, :state, :expiration_date, :image_path)
  end
end
