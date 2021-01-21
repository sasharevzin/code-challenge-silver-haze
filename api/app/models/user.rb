class User < ApplicationRecord
  # NOTE: I assume only on state id per user?
  has_one :state_id
  has_many :recommendations

  validates :name, :email, :date_of_birth, presence: true
  # NOTE: We can validate the regex format here but i'll leave it for now
  validates :email, uniqueness: true
end
