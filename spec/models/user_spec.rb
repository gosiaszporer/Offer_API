require 'rails_helper'

RSpec.describe User, type: :model do
  it { should have_many(:offers).through(:userOffers) }

  it { should validate_presence_of(:fullName) }
  it { should validate_presence_of(:emailAdress) }
end
