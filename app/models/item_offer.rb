class ItemOffer < ApplicationRecord
  # Associations
  belongs_to :lineItem
  belongs_to :offer
end
