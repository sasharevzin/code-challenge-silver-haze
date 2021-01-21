class User < ApplicationRecord
  has_one :state_id
  has_one :medical_recommendation

  validates :name, :email, :date_of_birth, presence: true
  # NOTE: We can validate the regex format here but i'll leave it for now
  validates :email, uniqueness: true
end
