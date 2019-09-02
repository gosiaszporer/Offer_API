class Offer < ApplicationRecord
	# Associations
	has_many :itemOffers
	has_many :lineItems, through: :itemOffers
	has_many :userOffers
	has_many :users, through: :userOffers

  def as_json(options={})
    super(include: :lineItems)
  end
end
