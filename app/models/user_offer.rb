class UserOffer < ApplicationRecord
  # Associations
  belongs_to :offer
  belongs_to :user
end
