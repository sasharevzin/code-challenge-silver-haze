class MedicalRecommendation < ApplicationRecord
  belongs_to :user

  validates :number, :issuer, :state, :expiration_date, :image_path, presence: true
end
