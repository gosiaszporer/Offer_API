require 'rails_helper'

RSpec.describe Offer, type: :model do
  it { should have_many(:users).through(:userOffers) }
  it { should have_many(:lineItems).through(:itemOffers) }
end
