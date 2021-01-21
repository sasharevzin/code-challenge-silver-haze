class StateIdSerializer < ActiveModel::Serializer
  attributes :id, :number, :state, :expiration_date, :image_path, :expired

  def expired
    object.expiration_date < Date.current
  end
end
