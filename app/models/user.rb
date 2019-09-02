class User < ApplicationRecord
  # Associations
	has_many :userOffers
	has_many :offers, through: :userOffers

  # Validations
  validates_presence_of :fullName, :emailAdress
end
