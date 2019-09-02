FactoryBot.define do
  factory :offer do
    Offer.create.itemOffers.create(lineItem: LineItem.first, quantity: 4)
    Offer.first.itemOffers.create(lineItem: LineItem.second, quantity: 6)
    Offer.first.itemOffers.create(lineItem: LineItem.third, quantity: 12)
  end
end