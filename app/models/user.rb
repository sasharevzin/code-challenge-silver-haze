class User < ApplicationRecord
  has_many :state_ids
  has_many :medical_recommendations

  validates :name, :email, :date_of_birth, presence: true
  # NOTE: We can validate the regex format here but i'll leave it for now
  validates :email, uniqueness: true
end
