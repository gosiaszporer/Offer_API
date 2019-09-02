require 'faker'
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
case Rails.env
when "development"
  # creating line items
  9.times do
    LineItem.create(
      name: Faker::Food.ingredient,
      price: 39.90,
      description: Faker::Food.description
     )
  end

  # creating offers
  Offer.create.itemOffers.create(lineItem: LineItem.first, quantity: 4)
  Offer.first.itemOffers.create(lineItem: LineItem.second, quantity: 6)
  Offer.first.itemOffers.create(lineItem: LineItem.third, quantity: 12)
  Offer.create.itemOffers.create(lineItem: LineItem.find(4), quantity: 2)
  Offer.second.itemOffers.create(lineItem: LineItem.find(5), quantity: 4)
  Offer.second.itemOffers.create(lineItem: LineItem.find(6), quantity: 6)
  Offer.create.itemOffers.create(lineItem: LineItem.find(7), quantity: 1)
  Offer.third.itemOffers.create(lineItem: LineItem.find(8), quantity: 6)
  Offer.third.itemOffers.create(lineItem: LineItem.find(9), quantity: 6)
end