class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :email, :date_of_birth

  has_one :state_id
  has_one :medical_recommendation
end
