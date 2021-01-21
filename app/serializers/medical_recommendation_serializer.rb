class MedicalRecommendationSerializer < ActiveModel::Serializer
  attributes :id, :issuer, :number, :state, :expiration_date, :image_path, :expired

  def expired
    object.expiration_date < Date.current
  end
end
