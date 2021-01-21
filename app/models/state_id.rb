class StateId < ApplicationRecord
  belongs_to :user

  validates :number, :state, :expiration_date, :image_path, presence: true
end
