class LineItem < ApplicationRecord
  # Associations
	has_many :itemOffers
	has_many :offers, through: :itemOffers

  # Validations
  validates_presence_of :name, :price, :description
end
